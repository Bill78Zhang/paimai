package package_5
{
   import flash.system.Capabilities;
   
   public class class_14
   {
      
      private static var var_49:Number = 0;
       
      
      public function class_14()
      {
         super();
      }
      
      public static function method_5() : String
      {
         var _loc1_:Date = new Date();
         var _loc2_:Number = _loc1_.getTime();
         var _loc3_:Number = Math.random() * Number.MAX_VALUE;
         var _loc4_:String = Capabilities.serverString;
         var _loc5_:String = method_66(_loc2_ + _loc4_ + _loc3_ + var_49++).toUpperCase();
         var _loc6_:String = _loc5_.substring(0,8) + "-" + _loc5_.substring(8,12) + "-" + _loc5_.substring(12,16) + "-" + _loc5_.substring(16,20) + "-" + _loc5_.substring(20,32);
         return _loc6_;
      }
      
      public static function method_67() : String
      {
         var _loc1_:Date = new Date();
         var _loc2_:Number = _loc1_.getTime();
         var _loc3_:Number = Math.random() * Number.MAX_VALUE;
         var _loc4_:String = Capabilities.serverString;
         var _loc5_:String = method_66(_loc2_ + _loc4_ + _loc3_ + var_49++).toUpperCase();
         var _loc6_:String = _loc5_.substring(0,8) + _loc5_.substring(8,12) + _loc5_.substring(12,16) + _loc5_.substring(16,20) + _loc5_.substring(20,32);
         return _loc6_;
      }
      
      private static function method_66(param1:String) : String
      {
         return method_68(param1);
      }
      
      private static function method_68(param1:String) : String
      {
         return method_69(method_70(method_71(param1),param1.length * 8));
      }
      
      private static function method_70(param1:Array, param2:Number) : Array
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         param1[param2 >> 5] = param1[param2 >> 5] | 128 << 24 - param2 % 32;
         param1[(param2 + 64 >> 9 << 4) + 15] = param2;
         var _loc3_:Array = new Array(80);
         var _loc4_:* = 1732584193;
         var _loc5_:* = -271733879;
         var _loc6_:* = -1732584194;
         var _loc7_:* = 271733878;
         var _loc8_:* = -1009589776;
         var _loc9_:* = 0;
         while(_loc9_ < param1.length)
         {
            _loc10_ = _loc4_;
            _loc11_ = _loc5_;
            _loc12_ = _loc6_;
            _loc13_ = _loc7_;
            _loc14_ = _loc8_;
            _loc15_ = 0;
            while(_loc15_ < 80)
            {
               if(_loc15_ < 16)
               {
                  _loc3_[_loc15_] = param1[_loc9_ + _loc15_];
               }
               else
               {
                  _loc3_[_loc15_] = method_72(_loc3_[_loc15_ - 3] ^ _loc3_[_loc15_ - 8] ^ _loc3_[_loc15_ - 14] ^ _loc3_[_loc15_ - 16],1);
               }
               _loc16_ = method_73(method_73(method_72(_loc4_,5),method_74(_loc15_,_loc5_,_loc6_,_loc7_)),method_73(method_73(_loc8_,_loc3_[_loc15_]),method_75(_loc15_)));
               _loc8_ = Number(_loc7_);
               _loc7_ = Number(_loc6_);
               _loc6_ = Number(method_72(_loc5_,30));
               _loc5_ = Number(_loc4_);
               _loc4_ = Number(_loc16_);
               _loc15_++;
            }
            _loc4_ = Number(method_73(_loc4_,_loc10_));
            _loc5_ = Number(method_73(_loc5_,_loc11_));
            _loc6_ = Number(method_73(_loc6_,_loc12_));
            _loc7_ = Number(method_73(_loc7_,_loc13_));
            _loc8_ = Number(method_73(_loc8_,_loc14_));
            _loc9_ = Number(_loc9_ + 16);
         }
         return new Array(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
      }
      
      private static function method_74(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         if(param1 < 20)
         {
            return param2 & param3 | ~param2 & param4;
         }
         if(param1 < 40)
         {
            return param2 ^ param3 ^ param4;
         }
         if(param1 < 60)
         {
            return param2 & param3 | param2 & param4 | param3 & param4;
         }
         return param2 ^ param3 ^ param4;
      }
      
      private static function method_75(param1:Number) : Number
      {
         return param1 < 20?1518500249:param1 < 40?1859775393:param1 < 60?-1894007588:Number(-899497514);
      }
      
      private static function method_73(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = (param1 & 65535) + (param2 & 65535);
         var _loc4_:Number = (param1 >> 16) + (param2 >> 16) + (_loc3_ >> 16);
         return _loc4_ << 16 | _loc3_ & 65535;
      }
      
      private static function method_72(param1:Number, param2:Number) : Number
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      private static function method_71(param1:String) : Array
      {
         var _loc2_:Array = new Array();
         var _loc3_:* = 255;
         var _loc4_:* = 0;
         while(_loc4_ < param1.length * 8)
         {
            _loc2_[_loc4_ >> 5] = _loc2_[_loc4_ >> 5] | (param1.charCodeAt(_loc4_ / 8) & _loc3_) << 24 - _loc4_ % 32;
            _loc4_ = Number(_loc4_ + 8);
         }
         return _loc2_;
      }
      
      private static function method_69(param1:Array) : String
      {
         var _loc2_:String = new String("");
         var _loc3_:String = new String("0123456789abcdef");
         var _loc4_:* = 0;
         while(_loc4_ < param1.length * 4)
         {
            _loc2_ = _loc2_ + (_loc3_.charAt(param1[_loc4_ >> 2] >> (3 - _loc4_ % 4) * 8 + 4 & 15) + _loc3_.charAt(param1[_loc4_ >> 2] >> (3 - _loc4_ % 4) * 8 & 15));
            _loc4_++;
         }
         return _loc2_;
      }
   }
}
