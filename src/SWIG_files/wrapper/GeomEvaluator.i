/*
Copyright 2008-2019 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%define GEOMEVALUATORDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=GEOMEVALUATORDOCSTRING) GeomEvaluator

#pragma SWIG nowarn=504,325,503,520,350,351,383,389,394,395, 404

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%include GeomEvaluator_headers.i

/* templates */
/* end templates declaration */


/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%wrap_handle(GeomEvaluator_Curve)
%wrap_handle(GeomEvaluator_Surface)
%wrap_handle(GeomEvaluator_OffsetCurve)
%wrap_handle(GeomEvaluator_OffsetSurface)
%wrap_handle(GeomEvaluator_SurfaceOfExtrusion)
%wrap_handle(GeomEvaluator_SurfaceOfRevolution)

%nodefaultctor GeomEvaluator_Curve;
class GeomEvaluator_Curve : public Standard_Transient {
	public:
		%feature("compactdefaultargs") D0;
		%feature("autodoc", "	* Value of 3D curve

	:param theU:
	:type theU: float
	:param theValue:
	:type theValue: gp_Pnt
	:rtype: None
") D0;
		void D0 (const Standard_Real theU,gp_Pnt & theValue);
		%feature("compactdefaultargs") D1;
		%feature("autodoc", "	* Value and first derivatives of curve

	:param theU:
	:type theU: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1:
	:type theD1: gp_Vec
	:rtype: None
") D1;
		void D1 (const Standard_Real theU,gp_Pnt & theValue,gp_Vec & theD1);
		%feature("compactdefaultargs") D2;
		%feature("autodoc", "	* Value, first and second derivatives of curve

	:param theU:
	:type theU: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1:
	:type theD1: gp_Vec
	:param theD2:
	:type theD2: gp_Vec
	:rtype: None
") D2;
		void D2 (const Standard_Real theU,gp_Pnt & theValue,gp_Vec & theD1,gp_Vec & theD2);
		%feature("compactdefaultargs") D3;
		%feature("autodoc", "	* Value, first, second and third derivatives of curve

	:param theU:
	:type theU: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1:
	:type theD1: gp_Vec
	:param theD2:
	:type theD2: gp_Vec
	:param theD3:
	:type theD3: gp_Vec
	:rtype: None
") D3;
		void D3 (const Standard_Real theU,gp_Pnt & theValue,gp_Vec & theD1,gp_Vec & theD2,gp_Vec & theD3);
		%feature("compactdefaultargs") DN;
		%feature("autodoc", "	* Calculates N-th derivatives of curve, where N = theDerU. Raises if N < 1

	:param theU:
	:type theU: float
	:param theDerU:
	:type theDerU: int
	:rtype: gp_Vec
") DN;
		gp_Vec DN (const Standard_Real theU,const Standard_Integer theDerU);
};


%make_alias(GeomEvaluator_Curve)

%extend GeomEvaluator_Curve {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor GeomEvaluator_Surface;
class GeomEvaluator_Surface : public Standard_Transient {
	public:
		%feature("compactdefaultargs") D0;
		%feature("autodoc", "	* Value of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:rtype: None
") D0;
		void D0 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue);
		%feature("compactdefaultargs") D1;
		%feature("autodoc", "	* Value and first derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:rtype: None
") D1;
		void D1 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V);
		%feature("compactdefaultargs") D2;
		%feature("autodoc", "	* Value, first and second derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:param theD2U:
	:type theD2U: gp_Vec
	:param theD2V:
	:type theD2V: gp_Vec
	:param theD2UV:
	:type theD2UV: gp_Vec
	:rtype: None
") D2;
		void D2 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V,gp_Vec & theD2U,gp_Vec & theD2V,gp_Vec & theD2UV);
		%feature("compactdefaultargs") D3;
		%feature("autodoc", "	* Value, first, second and third derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:param theD2U:
	:type theD2U: gp_Vec
	:param theD2V:
	:type theD2V: gp_Vec
	:param theD2UV:
	:type theD2UV: gp_Vec
	:param theD3U:
	:type theD3U: gp_Vec
	:param theD3V:
	:type theD3V: gp_Vec
	:param theD3UUV:
	:type theD3UUV: gp_Vec
	:param theD3UVV:
	:type theD3UVV: gp_Vec
	:rtype: None
") D3;
		void D3 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V,gp_Vec & theD2U,gp_Vec & theD2V,gp_Vec & theD2UV,gp_Vec & theD3U,gp_Vec & theD3V,gp_Vec & theD3UUV,gp_Vec & theD3UVV);
		%feature("compactdefaultargs") DN;
		%feature("autodoc", "	* Calculates N-th derivatives of surface, where N = theDerU + theDerV. //! Raises if N < 1 or theDerU < 0 or theDerV < 0

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theDerU:
	:type theDerU: int
	:param theDerV:
	:type theDerV: int
	:rtype: gp_Vec
") DN;
		gp_Vec DN (const Standard_Real theU,const Standard_Real theV,const Standard_Integer theDerU,const Standard_Integer theDerV);
};


%make_alias(GeomEvaluator_Surface)

%extend GeomEvaluator_Surface {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor GeomEvaluator_OffsetCurve;
class GeomEvaluator_OffsetCurve : public GeomEvaluator_Curve {
	public:
		%feature("compactdefaultargs") D0;
		%feature("autodoc", "	* Value of curve

	:param theU:
	:type theU: float
	:param theValue:
	:type theValue: gp_Pnt
	:rtype: None
") D0;
		void D0 (const Standard_Real theU,gp_Pnt & theValue);
		%feature("compactdefaultargs") D1;
		%feature("autodoc", "	* Value and first derivatives of curve

	:param theU:
	:type theU: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1:
	:type theD1: gp_Vec
	:rtype: None
") D1;
		void D1 (const Standard_Real theU,gp_Pnt & theValue,gp_Vec & theD1);
		%feature("compactdefaultargs") D2;
		%feature("autodoc", "	* Value, first and second derivatives of curve

	:param theU:
	:type theU: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1:
	:type theD1: gp_Vec
	:param theD2:
	:type theD2: gp_Vec
	:rtype: None
") D2;
		void D2 (const Standard_Real theU,gp_Pnt & theValue,gp_Vec & theD1,gp_Vec & theD2);
		%feature("compactdefaultargs") D3;
		%feature("autodoc", "	* Value, first, second and third derivatives of curve

	:param theU:
	:type theU: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1:
	:type theD1: gp_Vec
	:param theD2:
	:type theD2: gp_Vec
	:param theD3:
	:type theD3: gp_Vec
	:rtype: None
") D3;
		void D3 (const Standard_Real theU,gp_Pnt & theValue,gp_Vec & theD1,gp_Vec & theD2,gp_Vec & theD3);
		%feature("compactdefaultargs") DN;
		%feature("autodoc", "	* Calculates N-th derivatives of curve, where N = theDeriv. Raises if N < 1

	:param theU:
	:type theU: float
	:param theDeriv:
	:type theDeriv: int
	:rtype: gp_Vec
") DN;
		gp_Vec DN (const Standard_Real theU,const Standard_Integer theDeriv);
		%feature("compactdefaultargs") GeomEvaluator_OffsetCurve;
		%feature("autodoc", "	* Initialize evaluator by curve

	:param theBase:
	:type theBase: Handle_Geom_Curve &
	:param theOffset:
	:type theOffset: float
	:param theDirection:
	:type theDirection: gp_Dir
	:rtype: None
") GeomEvaluator_OffsetCurve;
		 GeomEvaluator_OffsetCurve (const Handle_Geom_Curve & theBase,const Standard_Real theOffset,const gp_Dir & theDirection);
		%feature("compactdefaultargs") GeomEvaluator_OffsetCurve;
		%feature("autodoc", "	* Initialize evaluator by curve adaptor

	:param theBase:
	:type theBase: Handle_GeomAdaptor_HCurve &
	:param theOffset:
	:type theOffset: float
	:param theDirection:
	:type theDirection: gp_Dir
	:rtype: None
") GeomEvaluator_OffsetCurve;
		 GeomEvaluator_OffsetCurve (const Handle_GeomAdaptor_HCurve & theBase,const Standard_Real theOffset,const gp_Dir & theDirection);
		%feature("compactdefaultargs") SetOffsetDirection;
		%feature("autodoc", "	:param theDirection:
	:type theDirection: gp_Dir
	:rtype: None
") SetOffsetDirection;
		void SetOffsetDirection (const gp_Dir & theDirection);
		%feature("compactdefaultargs") SetOffsetValue;
		%feature("autodoc", "	* Change the offset value

	:param theOffset:
	:type theOffset: float
	:rtype: None
") SetOffsetValue;
		void SetOffsetValue (Standard_Real theOffset);
};


%make_alias(GeomEvaluator_OffsetCurve)

%extend GeomEvaluator_OffsetCurve {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor GeomEvaluator_OffsetSurface;
class GeomEvaluator_OffsetSurface : public GeomEvaluator_Surface {
	public:
		%feature("compactdefaultargs") D0;
		%feature("autodoc", "	* Value of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:rtype: None
") D0;
		void D0 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue);
		%feature("compactdefaultargs") D1;
		%feature("autodoc", "	* Value and first derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:rtype: None
") D1;
		void D1 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V);
		%feature("compactdefaultargs") D2;
		%feature("autodoc", "	* Value, first and second derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:param theD2U:
	:type theD2U: gp_Vec
	:param theD2V:
	:type theD2V: gp_Vec
	:param theD2UV:
	:type theD2UV: gp_Vec
	:rtype: None
") D2;
		void D2 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V,gp_Vec & theD2U,gp_Vec & theD2V,gp_Vec & theD2UV);
		%feature("compactdefaultargs") D3;
		%feature("autodoc", "	* Value, first, second and third derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:param theD2U:
	:type theD2U: gp_Vec
	:param theD2V:
	:type theD2V: gp_Vec
	:param theD2UV:
	:type theD2UV: gp_Vec
	:param theD3U:
	:type theD3U: gp_Vec
	:param theD3V:
	:type theD3V: gp_Vec
	:param theD3UUV:
	:type theD3UUV: gp_Vec
	:param theD3UVV:
	:type theD3UVV: gp_Vec
	:rtype: None
") D3;
		void D3 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V,gp_Vec & theD2U,gp_Vec & theD2V,gp_Vec & theD2UV,gp_Vec & theD3U,gp_Vec & theD3V,gp_Vec & theD3UUV,gp_Vec & theD3UVV);
		%feature("compactdefaultargs") DN;
		%feature("autodoc", "	* Calculates N-th derivatives of surface, where N = theDerU + theDerV. //! Raises if N < 1 or theDerU < 0 or theDerV < 0

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theDerU:
	:type theDerU: int
	:param theDerV:
	:type theDerV: int
	:rtype: gp_Vec
") DN;
		gp_Vec DN (const Standard_Real theU,const Standard_Real theV,const Standard_Integer theDerU,const Standard_Integer theDerV);
		%feature("compactdefaultargs") GeomEvaluator_OffsetSurface;
		%feature("autodoc", "	* Initialize evaluator by surface

	:param theBase:
	:type theBase: Handle_Geom_Surface &
	:param theOffset:
	:type theOffset: float
	:param theOscSurf: default value is Handle_Geom_OsculatingSurface()
	:type theOscSurf: Handle_Geom_OsculatingSurface &
	:rtype: None
") GeomEvaluator_OffsetSurface;
		 GeomEvaluator_OffsetSurface (const Handle_Geom_Surface & theBase,const Standard_Real theOffset,const Handle_Geom_OsculatingSurface & theOscSurf = Handle_Geom_OsculatingSurface());
		%feature("compactdefaultargs") GeomEvaluator_OffsetSurface;
		%feature("autodoc", "	* Initialize evaluator by surface adaptor

	:param theBase:
	:type theBase: Handle_GeomAdaptor_HSurface &
	:param theOffset:
	:type theOffset: float
	:param theOscSurf: default value is Handle_Geom_OsculatingSurface()
	:type theOscSurf: Handle_Geom_OsculatingSurface &
	:rtype: None
") GeomEvaluator_OffsetSurface;
		 GeomEvaluator_OffsetSurface (const Handle_GeomAdaptor_HSurface & theBase,const Standard_Real theOffset,const Handle_Geom_OsculatingSurface & theOscSurf = Handle_Geom_OsculatingSurface());
		%feature("compactdefaultargs") SetOffsetValue;
		%feature("autodoc", "	* Change the offset value

	:param theOffset:
	:type theOffset: float
	:rtype: None
") SetOffsetValue;
		void SetOffsetValue (Standard_Real theOffset);
};


%make_alias(GeomEvaluator_OffsetSurface)

%extend GeomEvaluator_OffsetSurface {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor GeomEvaluator_SurfaceOfExtrusion;
class GeomEvaluator_SurfaceOfExtrusion : public GeomEvaluator_Surface {
	public:
		%feature("compactdefaultargs") D0;
		%feature("autodoc", "	* Value of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:rtype: None
") D0;
		void D0 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue);
		%feature("compactdefaultargs") D1;
		%feature("autodoc", "	* Value and first derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:rtype: None
") D1;
		void D1 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V);
		%feature("compactdefaultargs") D2;
		%feature("autodoc", "	* Value, first and second derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:param theD2U:
	:type theD2U: gp_Vec
	:param theD2V:
	:type theD2V: gp_Vec
	:param theD2UV:
	:type theD2UV: gp_Vec
	:rtype: None
") D2;
		void D2 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V,gp_Vec & theD2U,gp_Vec & theD2V,gp_Vec & theD2UV);
		%feature("compactdefaultargs") D3;
		%feature("autodoc", "	* Value, first, second and third derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:param theD2U:
	:type theD2U: gp_Vec
	:param theD2V:
	:type theD2V: gp_Vec
	:param theD2UV:
	:type theD2UV: gp_Vec
	:param theD3U:
	:type theD3U: gp_Vec
	:param theD3V:
	:type theD3V: gp_Vec
	:param theD3UUV:
	:type theD3UUV: gp_Vec
	:param theD3UVV:
	:type theD3UVV: gp_Vec
	:rtype: None
") D3;
		void D3 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V,gp_Vec & theD2U,gp_Vec & theD2V,gp_Vec & theD2UV,gp_Vec & theD3U,gp_Vec & theD3V,gp_Vec & theD3UUV,gp_Vec & theD3UVV);
		%feature("compactdefaultargs") DN;
		%feature("autodoc", "	* Calculates N-th derivatives of surface, where N = theDerU + theDerV. //! Raises if N < 1 or theDerU < 0 or theDerV < 0

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theDerU:
	:type theDerU: int
	:param theDerV:
	:type theDerV: int
	:rtype: gp_Vec
") DN;
		gp_Vec DN (const Standard_Real theU,const Standard_Real theV,const Standard_Integer theDerU,const Standard_Integer theDerV);
		%feature("compactdefaultargs") GeomEvaluator_SurfaceOfExtrusion;
		%feature("autodoc", "	* Initialize evaluator by surface

	:param theBase:
	:type theBase: Handle_Geom_Curve &
	:param theExtrusionDir:
	:type theExtrusionDir: gp_Dir
	:rtype: None
") GeomEvaluator_SurfaceOfExtrusion;
		 GeomEvaluator_SurfaceOfExtrusion (const Handle_Geom_Curve & theBase,const gp_Dir & theExtrusionDir);
		%feature("compactdefaultargs") GeomEvaluator_SurfaceOfExtrusion;
		%feature("autodoc", "	* Initialize evaluator by surface adaptor

	:param theBase:
	:type theBase: Handle_Adaptor3d_HCurve &
	:param theExtrusionDir:
	:type theExtrusionDir: gp_Dir
	:rtype: None
") GeomEvaluator_SurfaceOfExtrusion;
		 GeomEvaluator_SurfaceOfExtrusion (const Handle_Adaptor3d_HCurve & theBase,const gp_Dir & theExtrusionDir);
		%feature("compactdefaultargs") SetDirection;
		%feature("autodoc", "	* /Changes the direction of extrusion

	:param theDirection:
	:type theDirection: gp_Dir
	:rtype: None
") SetDirection;
		void SetDirection (const gp_Dir & theDirection);
};


%make_alias(GeomEvaluator_SurfaceOfExtrusion)

%extend GeomEvaluator_SurfaceOfExtrusion {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor GeomEvaluator_SurfaceOfRevolution;
class GeomEvaluator_SurfaceOfRevolution : public GeomEvaluator_Surface {
	public:
		%feature("compactdefaultargs") D0;
		%feature("autodoc", "	* Value of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:rtype: None
") D0;
		void D0 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue);
		%feature("compactdefaultargs") D1;
		%feature("autodoc", "	* Value and first derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:rtype: None
") D1;
		void D1 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V);
		%feature("compactdefaultargs") D2;
		%feature("autodoc", "	* Value, first and second derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:param theD2U:
	:type theD2U: gp_Vec
	:param theD2V:
	:type theD2V: gp_Vec
	:param theD2UV:
	:type theD2UV: gp_Vec
	:rtype: None
") D2;
		void D2 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V,gp_Vec & theD2U,gp_Vec & theD2V,gp_Vec & theD2UV);
		%feature("compactdefaultargs") D3;
		%feature("autodoc", "	* Value, first, second and third derivatives of surface

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theValue:
	:type theValue: gp_Pnt
	:param theD1U:
	:type theD1U: gp_Vec
	:param theD1V:
	:type theD1V: gp_Vec
	:param theD2U:
	:type theD2U: gp_Vec
	:param theD2V:
	:type theD2V: gp_Vec
	:param theD2UV:
	:type theD2UV: gp_Vec
	:param theD3U:
	:type theD3U: gp_Vec
	:param theD3V:
	:type theD3V: gp_Vec
	:param theD3UUV:
	:type theD3UUV: gp_Vec
	:param theD3UVV:
	:type theD3UVV: gp_Vec
	:rtype: None
") D3;
		void D3 (const Standard_Real theU,const Standard_Real theV,gp_Pnt & theValue,gp_Vec & theD1U,gp_Vec & theD1V,gp_Vec & theD2U,gp_Vec & theD2V,gp_Vec & theD2UV,gp_Vec & theD3U,gp_Vec & theD3V,gp_Vec & theD3UUV,gp_Vec & theD3UVV);
		%feature("compactdefaultargs") DN;
		%feature("autodoc", "	* Calculates N-th derivatives of surface, where N = theDerU + theDerV. //! Raises if N < 1 or theDerU < 0 or theDerV < 0

	:param theU:
	:type theU: float
	:param theV:
	:type theV: float
	:param theDerU:
	:type theDerU: int
	:param theDerV:
	:type theDerV: int
	:rtype: gp_Vec
") DN;
		gp_Vec DN (const Standard_Real theU,const Standard_Real theV,const Standard_Integer theDerU,const Standard_Integer theDerV);
		%feature("compactdefaultargs") GeomEvaluator_SurfaceOfRevolution;
		%feature("autodoc", "	* Initialize evaluator by revolved curve, the axis of revolution and the location

	:param theBase:
	:type theBase: Handle_Geom_Curve &
	:param theRevolDir:
	:type theRevolDir: gp_Dir
	:param theRevolLoc:
	:type theRevolLoc: gp_Pnt
	:rtype: None
") GeomEvaluator_SurfaceOfRevolution;
		 GeomEvaluator_SurfaceOfRevolution (const Handle_Geom_Curve & theBase,const gp_Dir & theRevolDir,const gp_Pnt & theRevolLoc);
		%feature("compactdefaultargs") GeomEvaluator_SurfaceOfRevolution;
		%feature("autodoc", "	* Initialize evaluator by adaptor of the revolved curve, the axis of revolution and the location

	:param theBase:
	:type theBase: Handle_Adaptor3d_HCurve &
	:param theRevolDir:
	:type theRevolDir: gp_Dir
	:param theRevolLoc:
	:type theRevolLoc: gp_Pnt
	:rtype: None
") GeomEvaluator_SurfaceOfRevolution;
		 GeomEvaluator_SurfaceOfRevolution (const Handle_Adaptor3d_HCurve & theBase,const gp_Dir & theRevolDir,const gp_Pnt & theRevolLoc);
		%feature("compactdefaultargs") SetAxis;
		%feature("autodoc", "	* Change the axis of revolution

	:param theAxis:
	:type theAxis: gp_Ax1
	:rtype: None
") SetAxis;
		void SetAxis (const gp_Ax1 & theAxis);
		%feature("compactdefaultargs") SetDirection;
		%feature("autodoc", "	* Change direction of the axis of revolution

	:param theDirection:
	:type theDirection: gp_Dir
	:rtype: None
") SetDirection;
		void SetDirection (const gp_Dir & theDirection);
		%feature("compactdefaultargs") SetLocation;
		%feature("autodoc", "	* Change location of the axis of revolution

	:param theLocation:
	:type theLocation: gp_Pnt
	:rtype: None
") SetLocation;
		void SetLocation (const gp_Pnt & theLocation);
};


%make_alias(GeomEvaluator_SurfaceOfRevolution)

%extend GeomEvaluator_SurfaceOfRevolution {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */