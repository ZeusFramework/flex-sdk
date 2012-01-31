////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2009 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package spark.accessibility
{
import mx.accessibility.AccConst;
    import mx.core.UIComponent;
    import mx.core.mx_internal;
    
    import spark.components.supportClasses.ToggleButtonBase;
    
    use namespace mx_internal;
    
    
    /**
     *  ToggleButtonAccImpl is a subclass of AccessibilityImplementation
     *  which implements accessibility for the ToggleButton class.
     *
     *  @langversion 3.0
     *  @playerversion Flash 10
     *  @playerversion AIR 1.5
     *  @productversion Flex 4
     */
    public class ToggleButtonAccImpl extends ButtonAccImpl
    {
        include "../core/Version.as";
        
        //--------------------------------------------------------------------------
        //
        //  Class methods
        //
        //--------------------------------------------------------------------------
        
        /**
         *  Enables accessibility in the ToggleButton class.
         *
         *  <p>This method is called by application startup code
         *  that is autogenerated by the MXML compiler.
         *  Afterwards, when instances of ToggleButton are initialized,
         *  their <code>accessibilityImplementation</code> property
         *  will be set to an instance of this class.</p>
         *
         *  @langversion 3.0
         *  @playerversion Flash 10
         *  @playerversion AIR 1.5
         *  @productversion Flex 4
         */
        public static function enableAccessibility():void
        {
            ToggleButtonBase.createAccessibilityImplementation =
                createAccessibilityImplementation;
        }
        
        /**
         *  @private
         *  Creates a ToggleButton's AccessibilityImplementation object.
         *  This method is called from UIComponent's
         *  initializeAccessibility() method.
         */
        mx_internal static function createAccessibilityImplementation(
            component:UIComponent):void
        {
            component.accessibilityImplementation =
                new ToggleButtonAccImpl(component);
        }
        
        //--------------------------------------------------------------------------
        //
        //  Constructor
        //
        //--------------------------------------------------------------------------
        
        /**
         *  Constructor.
         *
         *  @param master The UIComponent instance that this AccImpl instance
         *  is making accessible.
         *
         *  @langversion 3.0
         *  @playerversion Flash 10
         *  @playerversion AIR 1.5
         *  @productversion Flex 4
         */
        public function ToggleButtonAccImpl(master:UIComponent)
        {
            super(master);
        }
        
        //--------------------------------------------------------------------------
        //
        //  Overridden methods: AccessibilityImplementation
        //
        //--------------------------------------------------------------------------
        
        /**
         *  @private
         *  IAccessible method for returning the state of the ToggleButton.
         *  States are predefined for all the components in MSAA.
         *  Values are assigned to each state.
         *  Depending upon the Togglebutton being pressed or released,
         *  a value is returned.
         *
         *  @param childID uint
         *
         *  @return State uint
         */
        override public function get_accState(childID:uint):uint
        {
            var accState:uint = getState(childID);
            if (ToggleButtonBase(master).selected)
                accState |= AccConst.STATE_SYSTEM_PRESSED;
            
            return accState;
        }
        
    }
    
}
