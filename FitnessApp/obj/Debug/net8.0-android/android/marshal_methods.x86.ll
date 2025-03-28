; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [338 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [670 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 258
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 292
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 8: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 208
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 333
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 206
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 276
	i32 112648851, ; 15: FitnessApp => 0x6b6e293 => 0
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 276
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 296
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 232
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 278
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 330
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 331
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 230
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 252
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 235
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 254
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 251
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 302
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 330
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 221
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 47: Microsoft.SqlServer.Server => 0x13ada4fd => 207
	i32 336156722, ; 48: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 315
	i32 342366114, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 253
	i32 356389973, ; 50: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 314
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 334
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 326
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 236
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 249
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 251
	i32 485463106, ; 70: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 195
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 264
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 313
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 307
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 192
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 77: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 296
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 188
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 83: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 176
	i32 549171840, ; 84: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 85: Jsr305Binding => 0x213954e7 => 289
	i32 569601784, ; 86: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 287
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 88: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 321
	i32 601371474, ; 89: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 90: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 241
	i32 627931235, ; 93: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 319
	i32 639843206, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 247
	i32 643868501, ; 95: System.Net => 0x2660a755 => 81
	i32 662205335, ; 96: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 97: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 283
	i32 666292255, ; 98: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 228
	i32 672442732, ; 99: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 100: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 101: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 301
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 298
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 105: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 106: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 293
	i32 700358131, ; 107: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 108: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 316
	i32 709557578, ; 109: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 304
	i32 720511267, ; 110: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 297
	i32 722857257, ; 111: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 112: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 113: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 114: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 218
	i32 759454413, ; 115: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 116: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 117: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 118: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 325
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 191
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 242
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 256
	i32 809851609, ; 123: System.Drawing.Common.dll => 0x30455ad9 => 210
	i32 823281589, ; 124: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 125: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 126: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 127: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 128: Xamarin.AndroidX.Print => 0x3246f6cd => 269
	i32 873119928, ; 129: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 130: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 131: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 132: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 134: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 328
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 292
	i32 952186615, ; 136: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 137: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 297
	i32 966729478, ; 138: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 290
	i32 967690846, ; 139: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 253
	i32 975236339, ; 140: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 141: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 142: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 143: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 144: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 145: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 146: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 147: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 273
	i32 1019214401, ; 148: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 149: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 187
	i32 1029334545, ; 150: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 303
	i32 1031528504, ; 151: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 291
	i32 1035644815, ; 152: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 226
	i32 1036536393, ; 153: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 154: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 155: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 260
	i32 1062017875, ; 156: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 194
	i32 1067306892, ; 157: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 158: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 159: Xamarin.Kotlin.StdLib => 0x409e66d8 => 294
	i32 1098259244, ; 160: System => 0x41761b2c => 164
	i32 1118262833, ; 161: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 316
	i32 1121599056, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 259
	i32 1127624469, ; 163: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 190
	i32 1138436374, ; 164: Microsoft.Data.SqlClient.dll => 0x43db2916 => 177
	i32 1145483052, ; 165: System.Windows.Extensions.dll => 0x4446af2c => 216
	i32 1149092582, ; 166: Xamarin.AndroidX.Window => 0x447dc2e6 => 286
	i32 1157931901, ; 167: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 179
	i32 1168523401, ; 168: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 322
	i32 1170634674, ; 169: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 170: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 282
	i32 1178241025, ; 171: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 267
	i32 1202000627, ; 172: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 179
	i32 1203215381, ; 173: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 320
	i32 1204270330, ; 174: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 228
	i32 1204575371, ; 175: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 183
	i32 1208641965, ; 176: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 177: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 178: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 318
	i32 1242645958, ; 179: FitnessApp.dll => 0x4a1145c6 => 0
	i32 1243150071, ; 180: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 287
	i32 1253011324, ; 181: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 182: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 302
	i32 1264511973, ; 183: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 277
	i32 1267360935, ; 184: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 281
	i32 1273260888, ; 185: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 233
	i32 1275534314, ; 186: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 298
	i32 1278448581, ; 187: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 225
	i32 1293217323, ; 188: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 244
	i32 1309188875, ; 189: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 190: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 286
	i32 1324164729, ; 191: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 192: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 193: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 194: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 332
	i32 1376866003, ; 195: Xamarin.AndroidX.SavedState => 0x52114ed3 => 273
	i32 1379779777, ; 196: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 197: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 198: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 237
	i32 1408764838, ; 199: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 200: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 201: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 202: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 300
	i32 1434145427, ; 203: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 204: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 290
	i32 1439761251, ; 205: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 206: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 207: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 208: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 209: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 210: System.IdentityModel.Tokens.Jwt => 0x57137723 => 211
	i32 1461004990, ; 211: es\Microsoft.Maui.Controls.resources => 0x57152abe => 306
	i32 1461234159, ; 212: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 213: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 214: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 215: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 227
	i32 1470490898, ; 216: Microsoft.Extensions.Primitives => 0x57a5e912 => 192
	i32 1479771757, ; 217: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 218: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 219: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 220: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 274
	i32 1493001747, ; 221: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 310
	i32 1498168481, ; 222: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 196
	i32 1514721132, ; 223: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 305
	i32 1536373174, ; 224: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 225: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 226: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 227: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 228: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 325
	i32 1565310744, ; 229: System.Runtime.Caching => 0x5d4cbf18 => 213
	i32 1565862583, ; 230: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 231: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 232: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 233: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 234: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 235: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 243
	i32 1592978981, ; 236: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 237: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 291
	i32 1601112923, ; 238: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 239: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 240: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 241: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 263
	i32 1622358360, ; 242: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 243: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 285
	i32 1628113371, ; 244: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 199
	i32 1635184631, ; 245: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 247
	i32 1636350590, ; 246: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 240
	i32 1639515021, ; 247: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 248: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 249: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 250: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 251: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 279
	i32 1658251792, ; 252: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 288
	i32 1670060433, ; 253: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 235
	i32 1675553242, ; 254: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 255: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 256: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 257: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 258: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 178
	i32 1691477237, ; 259: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 260: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 261: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 295
	i32 1701541528, ; 262: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 263: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 256
	i32 1726116996, ; 264: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 265: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 266: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 231
	i32 1736233607, ; 267: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 323
	i32 1743415430, ; 268: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 301
	i32 1744735666, ; 269: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 270: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 271: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 272: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 273: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 274: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 275: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 278
	i32 1770582343, ; 276: Microsoft.Extensions.Logging.dll => 0x6988f147 => 188
	i32 1776026572, ; 277: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 278: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 279: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 280: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 317
	i32 1788241197, ; 281: Xamarin.AndroidX.Fragment => 0x6a96652d => 249
	i32 1793755602, ; 282: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 309
	i32 1794500907, ; 283: Microsoft.Identity.Client.dll => 0x6af5e92b => 193
	i32 1796167890, ; 284: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 176
	i32 1808609942, ; 285: Xamarin.AndroidX.Loader => 0x6bcd3296 => 263
	i32 1813058853, ; 286: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 294
	i32 1813201214, ; 287: Xamarin.Google.Android.Material => 0x6c13413e => 288
	i32 1818569960, ; 288: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 268
	i32 1818787751, ; 289: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 290: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 291: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 292: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 189
	i32 1829150748, ; 293: System.Windows.Extensions => 0x6d06a01c => 216
	i32 1842015223, ; 294: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 329
	i32 1847515442, ; 295: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 218
	i32 1853025655, ; 296: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 326
	i32 1858542181, ; 297: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 298: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 299: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 199
	i32 1875935024, ; 300: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 308
	i32 1879696579, ; 301: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 302: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 229
	i32 1888955245, ; 303: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 304: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 305: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 306: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 307: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 308: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 309: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 310: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 275
	i32 1968388702, ; 311: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 184
	i32 1983156543, ; 312: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 295
	i32 1985761444, ; 313: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 220
	i32 1986222447, ; 314: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 200
	i32 2003115576, ; 315: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 305
	i32 2011961780, ; 316: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 317: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 260
	i32 2025202353, ; 318: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 300
	i32 2031763787, ; 319: Xamarin.Android.Glide => 0x791a414b => 217
	i32 2040764568, ; 320: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 194
	i32 2045470958, ; 321: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 322: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 255
	i32 2060060697, ; 323: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 324: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 304
	i32 2070888862, ; 325: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 326: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 327: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 328: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 329: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 330: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 331: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 332: Microsoft.Maui => 0x80bd55ad => 204
	i32 2169148018, ; 333: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 312
	i32 2181898931, ; 334: Microsoft.Extensions.Options.dll => 0x820d22b3 => 191
	i32 2192057212, ; 335: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 189
	i32 2193016926, ; 336: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 337: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 299
	i32 2201231467, ; 338: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 339: it\Microsoft.Maui.Controls.resources => 0x839595db => 314
	i32 2217644978, ; 340: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 282
	i32 2222056684, ; 341: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 342: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 264
	i32 2252106437, ; 343: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 344: Microsoft.EntityFrameworkCore => 0x86487ec9 => 178
	i32 2253551641, ; 345: Microsoft.IdentityModel.Protocols => 0x86527819 => 198
	i32 2256313426, ; 346: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 347: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 348: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 185
	i32 2267999099, ; 349: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 219
	i32 2270573516, ; 350: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 308
	i32 2279755925, ; 351: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 271
	i32 2293034957, ; 352: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 353: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 354: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 355: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 318
	i32 2305521784, ; 356: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 357: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 223
	i32 2320631194, ; 358: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 359: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 360: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 361: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 362: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 363: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 197
	i32 2371007202, ; 364: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 184
	i32 2378619854, ; 365: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 366: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 367: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 313
	i32 2401565422, ; 368: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 369: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 246
	i32 2421380589, ; 370: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 371: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 233
	i32 2427813419, ; 372: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 310
	i32 2435356389, ; 373: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 374: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 375: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 376: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 377: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 378: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 236
	i32 2471841756, ; 379: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 380: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 381: Microsoft.Maui.Controls => 0x93dba8a1 => 202
	i32 2483903535, ; 382: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 383: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 384: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 385: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 386: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 258
	i32 2522472828, ; 387: Xamarin.Android.Glide.dll => 0x9659e17c => 217
	i32 2538310050, ; 388: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 389: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 311
	i32 2562349572, ; 390: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 391: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 392: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 259
	i32 2581819634, ; 393: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 281
	i32 2585220780, ; 394: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 395: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 396: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 397: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 320
	i32 2605712449, ; 398: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 299
	i32 2615233544, ; 399: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 250
	i32 2616218305, ; 400: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 190
	i32 2617129537, ; 401: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 402: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 403: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 240
	i32 2624644809, ; 404: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 245
	i32 2626831493, ; 405: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 315
	i32 2627185994, ; 406: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 407: System.Memory.Data => 0x9ca74fdc => 212
	i32 2629843544, ; 408: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 409: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 254
	i32 2634653062, ; 410: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 180
	i32 2640290731, ; 411: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 197
	i32 2640706905, ; 412: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 413: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 214
	i32 2663391936, ; 414: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 219
	i32 2663698177, ; 415: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 416: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 417: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 418: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 419: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2686887180, ; 420: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 421: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 422: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 279
	i32 2715334215, ; 423: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 424: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 425: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 426: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 427: Xamarin.AndroidX.Activity => 0xa2e0939b => 221
	i32 2735172069, ; 428: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 429: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 227
	i32 2740051746, ; 430: Microsoft.Identity.Client => 0xa351df22 => 193
	i32 2740948882, ; 431: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 432: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 433: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 321
	i32 2755098380, ; 434: Microsoft.SqlServer.Server.dll => 0xa437770c => 207
	i32 2755643133, ; 435: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 181
	i32 2758225723, ; 436: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 203
	i32 2764765095, ; 437: Microsoft.Maui.dll => 0xa4caf7a7 => 204
	i32 2765824710, ; 438: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 439: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 293
	i32 2778768386, ; 440: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 284
	i32 2779977773, ; 441: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 272
	i32 2785988530, ; 442: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 327
	i32 2788224221, ; 443: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 250
	i32 2795666278, ; 444: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 208
	i32 2801831435, ; 445: Microsoft.Maui.Graphics => 0xa7008e0b => 206
	i32 2803228030, ; 446: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 447: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 306
	i32 2810250172, ; 448: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 237
	i32 2819470561, ; 449: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 450: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 451: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 272
	i32 2824502124, ; 452: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 453: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 319
	i32 2838993487, ; 454: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 261
	i32 2841355853, ; 455: System.Security.Permissions => 0xa95ba64d => 215
	i32 2847789619, ; 456: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 180
	i32 2849599387, ; 457: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 458: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 284
	i32 2855708567, ; 459: Xamarin.AndroidX.Transition => 0xaa36a797 => 280
	i32 2861098320, ; 460: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 461: Microsoft.Maui.Essentials => 0xaa8a4878 => 205
	i32 2867946736, ; 462: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 214
	i32 2870099610, ; 463: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 222
	i32 2875164099, ; 464: Jsr305Binding.dll => 0xab5f85c3 => 289
	i32 2875220617, ; 465: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 466: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 248
	i32 2887636118, ; 467: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 468: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 469: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 470: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 471: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 472: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 473: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 285
	i32 2919462931, ; 474: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 475: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 224
	i32 2936416060, ; 476: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 477: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 478: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 479: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 209
	i32 2959614098, ; 480: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 481: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 482: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 483: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 244
	i32 2987532451, ; 484: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 275
	i32 2996846495, ; 485: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 257
	i32 3012788804, ; 486: System.Configuration.ConfigurationManager => 0xb3938244 => 209
	i32 3016983068, ; 487: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 277
	i32 3023353419, ; 488: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 489: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 252
	i32 3033605958, ; 490: System.Memory.Data.dll => 0xb4d12746 => 212
	i32 3038032645, ; 491: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 334
	i32 3056245963, ; 492: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 274
	i32 3057625584, ; 493: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 265
	i32 3059408633, ; 494: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 495: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 496: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 182
	i32 3075834255, ; 497: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 498: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 312
	i32 3084678329, ; 499: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 200
	i32 3090735792, ; 500: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 501: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 502: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 503: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 504: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 505: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 506: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 507: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 508: GoogleGson.dll => 0xbba64c02 => 175
	i32 3159123045, ; 509: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 510: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 511: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 266
	i32 3192346100, ; 512: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 513: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 514: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 182
	i32 3204380047, ; 515: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 516: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 517: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 243
	i32 3213246214, ; 518: System.Security.Permissions.dll => 0xbf863f06 => 215
	i32 3220365878, ; 519: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 520: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 521: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 522: Xamarin.AndroidX.CardView => 0xc235e84d => 231
	i32 3265493905, ; 523: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 524: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 525: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 526: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 527: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 528: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 529: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 530: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 531: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 307
	i32 3312457198, ; 532: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 196
	i32 3316684772, ; 533: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 534: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 241
	i32 3317144872, ; 535: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 536: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 229
	i32 3345895724, ; 537: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 270
	i32 3346324047, ; 538: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 267
	i32 3357674450, ; 539: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 324
	i32 3358260929, ; 540: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 541: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 222
	i32 3362522851, ; 542: Xamarin.AndroidX.Core => 0xc86c06e3 => 238
	i32 3366347497, ; 543: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 544: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 198
	i32 3374999561, ; 545: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 271
	i32 3381016424, ; 546: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 303
	i32 3395150330, ; 547: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 548: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 549: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 242
	i32 3428513518, ; 550: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 186
	i32 3429136800, ; 551: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 552: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 553: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 245
	i32 3445260447, ; 554: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 555: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 201
	i32 3463511458, ; 556: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 311
	i32 3471940407, ; 557: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 558: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 559: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 324
	i32 3484440000, ; 560: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 323
	i32 3485117614, ; 561: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 562: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 563: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 234
	i32 3509114376, ; 564: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 565: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 566: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 567: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 568: Microsoft.Data.SqlClient => 0xd35114f1 => 177
	i32 3560100363, ; 569: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 570: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 571: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 572: System.Runtime.Caching.dll => 0xd4d3289f => 213
	i32 3580758918, ; 573: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 331
	i32 3597029428, ; 574: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 220
	i32 3598340787, ; 575: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 576: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 577: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 578: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 269
	i32 3633644679, ; 579: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 224
	i32 3638274909, ; 580: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 581: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 255
	i32 3643446276, ; 582: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 328
	i32 3643854240, ; 583: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 266
	i32 3645089577, ; 584: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 585: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 185
	i32 3660523487, ; 586: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 587: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 588: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 230
	i32 3684561358, ; 589: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 234
	i32 3689375977, ; 590: System.Drawing.Common => 0xdbe768e9 => 210
	i32 3697841164, ; 591: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 333
	i32 3700591436, ; 592: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 195
	i32 3700866549, ; 593: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 594: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 239
	i32 3716563718, ; 595: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 596: Xamarin.AndroidX.Annotation => 0xdda814c6 => 223
	i32 3724971120, ; 597: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 265
	i32 3732100267, ; 598: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 599: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 600: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 601: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 602: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 232
	i32 3792276235, ; 603: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 604: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 201
	i32 3802395368, ; 605: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 606: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 607: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 608: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 609: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 187
	i32 3844307129, ; 610: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 611: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 612: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 613: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 614: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 615: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 616: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 280
	i32 3888767677, ; 617: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 270
	i32 3889960447, ; 618: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 332
	i32 3896106733, ; 619: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 620: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 238
	i32 3901907137, ; 621: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 622: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 623: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 283
	i32 3928044579, ; 624: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 625: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 626: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 268
	i32 3945713374, ; 627: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 628: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 629: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 226
	i32 3959773229, ; 630: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 257
	i32 3980434154, ; 631: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 327
	i32 3987592930, ; 632: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 309
	i32 4003436829, ; 633: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 634: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 225
	i32 4025784931, ; 635: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 636: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 203
	i32 4054681211, ; 637: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 638: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 639: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 640: Microsoft.Maui.Essentials.dll => 0xf40add04 => 205
	i32 4099507663, ; 641: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 642: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 643: Xamarin.AndroidX.Emoji2 => 0xf479582c => 246
	i32 4101842092, ; 644: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 183
	i32 4102112229, ; 645: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 322
	i32 4125707920, ; 646: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 317
	i32 4126470640, ; 647: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 186
	i32 4127667938, ; 648: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 649: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 650: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 651: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 329
	i32 4151237749, ; 652: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 653: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 654: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 655: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 656: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 657: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 262
	i32 4185676441, ; 658: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 659: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 181
	i32 4196529839, ; 660: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 661: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 662: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 239
	i32 4258378803, ; 663: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 261
	i32 4260525087, ; 664: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 665: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 211
	i32 4271975918, ; 666: Microsoft.Maui.Controls.dll => 0xfea12dee => 202
	i32 4274976490, ; 667: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 668: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 262
	i32 4294763496 ; 669: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 248
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [670 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 258, ; 3
	i32 292, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 208, ; 8
	i32 30, ; 9
	i32 333, ; 10
	i32 124, ; 11
	i32 206, ; 12
	i32 102, ; 13
	i32 276, ; 14
	i32 0, ; 15
	i32 107, ; 16
	i32 276, ; 17
	i32 139, ; 18
	i32 296, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 232, ; 23
	i32 132, ; 24
	i32 278, ; 25
	i32 151, ; 26
	i32 330, ; 27
	i32 331, ; 28
	i32 18, ; 29
	i32 230, ; 30
	i32 26, ; 31
	i32 252, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 235, ; 37
	i32 147, ; 38
	i32 254, ; 39
	i32 251, ; 40
	i32 302, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 330, ; 44
	i32 221, ; 45
	i32 83, ; 46
	i32 207, ; 47
	i32 315, ; 48
	i32 253, ; 49
	i32 314, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 334, ; 58
	i32 165, ; 59
	i32 326, ; 60
	i32 236, ; 61
	i32 12, ; 62
	i32 249, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 251, ; 69
	i32 195, ; 70
	i32 264, ; 71
	i32 84, ; 72
	i32 313, ; 73
	i32 307, ; 74
	i32 192, ; 75
	i32 150, ; 76
	i32 296, ; 77
	i32 60, ; 78
	i32 188, ; 79
	i32 51, ; 80
	i32 103, ; 81
	i32 114, ; 82
	i32 176, ; 83
	i32 40, ; 84
	i32 289, ; 85
	i32 287, ; 86
	i32 120, ; 87
	i32 321, ; 88
	i32 52, ; 89
	i32 44, ; 90
	i32 119, ; 91
	i32 241, ; 92
	i32 319, ; 93
	i32 247, ; 94
	i32 81, ; 95
	i32 136, ; 96
	i32 283, ; 97
	i32 228, ; 98
	i32 8, ; 99
	i32 73, ; 100
	i32 301, ; 101
	i32 155, ; 102
	i32 298, ; 103
	i32 154, ; 104
	i32 92, ; 105
	i32 293, ; 106
	i32 45, ; 107
	i32 316, ; 108
	i32 304, ; 109
	i32 297, ; 110
	i32 109, ; 111
	i32 129, ; 112
	i32 25, ; 113
	i32 218, ; 114
	i32 72, ; 115
	i32 55, ; 116
	i32 46, ; 117
	i32 325, ; 118
	i32 191, ; 119
	i32 242, ; 120
	i32 22, ; 121
	i32 256, ; 122
	i32 210, ; 123
	i32 86, ; 124
	i32 43, ; 125
	i32 160, ; 126
	i32 71, ; 127
	i32 269, ; 128
	i32 3, ; 129
	i32 42, ; 130
	i32 63, ; 131
	i32 16, ; 132
	i32 53, ; 133
	i32 328, ; 134
	i32 292, ; 135
	i32 105, ; 136
	i32 297, ; 137
	i32 290, ; 138
	i32 253, ; 139
	i32 34, ; 140
	i32 158, ; 141
	i32 85, ; 142
	i32 32, ; 143
	i32 12, ; 144
	i32 51, ; 145
	i32 56, ; 146
	i32 273, ; 147
	i32 36, ; 148
	i32 187, ; 149
	i32 303, ; 150
	i32 291, ; 151
	i32 226, ; 152
	i32 35, ; 153
	i32 58, ; 154
	i32 260, ; 155
	i32 194, ; 156
	i32 175, ; 157
	i32 17, ; 158
	i32 294, ; 159
	i32 164, ; 160
	i32 316, ; 161
	i32 259, ; 162
	i32 190, ; 163
	i32 177, ; 164
	i32 216, ; 165
	i32 286, ; 166
	i32 179, ; 167
	i32 322, ; 168
	i32 153, ; 169
	i32 282, ; 170
	i32 267, ; 171
	i32 179, ; 172
	i32 320, ; 173
	i32 228, ; 174
	i32 183, ; 175
	i32 29, ; 176
	i32 52, ; 177
	i32 318, ; 178
	i32 0, ; 179
	i32 287, ; 180
	i32 5, ; 181
	i32 302, ; 182
	i32 277, ; 183
	i32 281, ; 184
	i32 233, ; 185
	i32 298, ; 186
	i32 225, ; 187
	i32 244, ; 188
	i32 85, ; 189
	i32 286, ; 190
	i32 61, ; 191
	i32 112, ; 192
	i32 57, ; 193
	i32 332, ; 194
	i32 273, ; 195
	i32 99, ; 196
	i32 19, ; 197
	i32 237, ; 198
	i32 111, ; 199
	i32 101, ; 200
	i32 102, ; 201
	i32 300, ; 202
	i32 104, ; 203
	i32 290, ; 204
	i32 71, ; 205
	i32 38, ; 206
	i32 32, ; 207
	i32 103, ; 208
	i32 73, ; 209
	i32 211, ; 210
	i32 306, ; 211
	i32 9, ; 212
	i32 123, ; 213
	i32 46, ; 214
	i32 227, ; 215
	i32 192, ; 216
	i32 9, ; 217
	i32 43, ; 218
	i32 4, ; 219
	i32 274, ; 220
	i32 310, ; 221
	i32 196, ; 222
	i32 305, ; 223
	i32 31, ; 224
	i32 138, ; 225
	i32 92, ; 226
	i32 93, ; 227
	i32 325, ; 228
	i32 213, ; 229
	i32 49, ; 230
	i32 141, ; 231
	i32 112, ; 232
	i32 140, ; 233
	i32 174, ; 234
	i32 243, ; 235
	i32 115, ; 236
	i32 291, ; 237
	i32 157, ; 238
	i32 76, ; 239
	i32 79, ; 240
	i32 263, ; 241
	i32 37, ; 242
	i32 285, ; 243
	i32 199, ; 244
	i32 247, ; 245
	i32 240, ; 246
	i32 64, ; 247
	i32 138, ; 248
	i32 15, ; 249
	i32 116, ; 250
	i32 279, ; 251
	i32 288, ; 252
	i32 235, ; 253
	i32 48, ; 254
	i32 70, ; 255
	i32 80, ; 256
	i32 126, ; 257
	i32 178, ; 258
	i32 94, ; 259
	i32 121, ; 260
	i32 295, ; 261
	i32 26, ; 262
	i32 256, ; 263
	i32 97, ; 264
	i32 28, ; 265
	i32 231, ; 266
	i32 323, ; 267
	i32 301, ; 268
	i32 149, ; 269
	i32 169, ; 270
	i32 4, ; 271
	i32 98, ; 272
	i32 33, ; 273
	i32 93, ; 274
	i32 278, ; 275
	i32 188, ; 276
	i32 21, ; 277
	i32 41, ; 278
	i32 170, ; 279
	i32 317, ; 280
	i32 249, ; 281
	i32 309, ; 282
	i32 193, ; 283
	i32 176, ; 284
	i32 263, ; 285
	i32 294, ; 286
	i32 288, ; 287
	i32 268, ; 288
	i32 2, ; 289
	i32 134, ; 290
	i32 111, ; 291
	i32 189, ; 292
	i32 216, ; 293
	i32 329, ; 294
	i32 218, ; 295
	i32 326, ; 296
	i32 58, ; 297
	i32 95, ; 298
	i32 199, ; 299
	i32 308, ; 300
	i32 39, ; 301
	i32 229, ; 302
	i32 25, ; 303
	i32 94, ; 304
	i32 89, ; 305
	i32 99, ; 306
	i32 10, ; 307
	i32 87, ; 308
	i32 100, ; 309
	i32 275, ; 310
	i32 184, ; 311
	i32 295, ; 312
	i32 220, ; 313
	i32 200, ; 314
	i32 305, ; 315
	i32 7, ; 316
	i32 260, ; 317
	i32 300, ; 318
	i32 217, ; 319
	i32 194, ; 320
	i32 88, ; 321
	i32 255, ; 322
	i32 154, ; 323
	i32 304, ; 324
	i32 33, ; 325
	i32 116, ; 326
	i32 82, ; 327
	i32 20, ; 328
	i32 11, ; 329
	i32 162, ; 330
	i32 3, ; 331
	i32 204, ; 332
	i32 312, ; 333
	i32 191, ; 334
	i32 189, ; 335
	i32 84, ; 336
	i32 299, ; 337
	i32 64, ; 338
	i32 314, ; 339
	i32 282, ; 340
	i32 143, ; 341
	i32 264, ; 342
	i32 157, ; 343
	i32 178, ; 344
	i32 198, ; 345
	i32 41, ; 346
	i32 117, ; 347
	i32 185, ; 348
	i32 219, ; 349
	i32 308, ; 350
	i32 271, ; 351
	i32 131, ; 352
	i32 75, ; 353
	i32 66, ; 354
	i32 318, ; 355
	i32 172, ; 356
	i32 223, ; 357
	i32 143, ; 358
	i32 106, ; 359
	i32 151, ; 360
	i32 70, ; 361
	i32 156, ; 362
	i32 197, ; 363
	i32 184, ; 364
	i32 121, ; 365
	i32 127, ; 366
	i32 313, ; 367
	i32 152, ; 368
	i32 246, ; 369
	i32 141, ; 370
	i32 233, ; 371
	i32 310, ; 372
	i32 20, ; 373
	i32 14, ; 374
	i32 135, ; 375
	i32 75, ; 376
	i32 59, ; 377
	i32 236, ; 378
	i32 167, ; 379
	i32 168, ; 380
	i32 202, ; 381
	i32 15, ; 382
	i32 74, ; 383
	i32 6, ; 384
	i32 23, ; 385
	i32 258, ; 386
	i32 217, ; 387
	i32 91, ; 388
	i32 311, ; 389
	i32 1, ; 390
	i32 136, ; 391
	i32 259, ; 392
	i32 281, ; 393
	i32 134, ; 394
	i32 69, ; 395
	i32 146, ; 396
	i32 320, ; 397
	i32 299, ; 398
	i32 250, ; 399
	i32 190, ; 400
	i32 88, ; 401
	i32 96, ; 402
	i32 240, ; 403
	i32 245, ; 404
	i32 315, ; 405
	i32 31, ; 406
	i32 212, ; 407
	i32 45, ; 408
	i32 254, ; 409
	i32 180, ; 410
	i32 197, ; 411
	i32 173, ; 412
	i32 214, ; 413
	i32 219, ; 414
	i32 109, ; 415
	i32 158, ; 416
	i32 35, ; 417
	i32 22, ; 418
	i32 174, ; 419
	i32 114, ; 420
	i32 57, ; 421
	i32 279, ; 422
	i32 144, ; 423
	i32 118, ; 424
	i32 120, ; 425
	i32 110, ; 426
	i32 221, ; 427
	i32 139, ; 428
	i32 227, ; 429
	i32 193, ; 430
	i32 54, ; 431
	i32 105, ; 432
	i32 321, ; 433
	i32 207, ; 434
	i32 181, ; 435
	i32 203, ; 436
	i32 204, ; 437
	i32 133, ; 438
	i32 293, ; 439
	i32 284, ; 440
	i32 272, ; 441
	i32 327, ; 442
	i32 250, ; 443
	i32 208, ; 444
	i32 206, ; 445
	i32 159, ; 446
	i32 306, ; 447
	i32 237, ; 448
	i32 163, ; 449
	i32 132, ; 450
	i32 272, ; 451
	i32 161, ; 452
	i32 319, ; 453
	i32 261, ; 454
	i32 215, ; 455
	i32 180, ; 456
	i32 140, ; 457
	i32 284, ; 458
	i32 280, ; 459
	i32 169, ; 460
	i32 205, ; 461
	i32 214, ; 462
	i32 222, ; 463
	i32 289, ; 464
	i32 40, ; 465
	i32 248, ; 466
	i32 81, ; 467
	i32 56, ; 468
	i32 37, ; 469
	i32 97, ; 470
	i32 166, ; 471
	i32 172, ; 472
	i32 285, ; 473
	i32 82, ; 474
	i32 224, ; 475
	i32 98, ; 476
	i32 30, ; 477
	i32 159, ; 478
	i32 209, ; 479
	i32 18, ; 480
	i32 127, ; 481
	i32 119, ; 482
	i32 244, ; 483
	i32 275, ; 484
	i32 257, ; 485
	i32 209, ; 486
	i32 277, ; 487
	i32 165, ; 488
	i32 252, ; 489
	i32 212, ; 490
	i32 334, ; 491
	i32 274, ; 492
	i32 265, ; 493
	i32 170, ; 494
	i32 16, ; 495
	i32 182, ; 496
	i32 144, ; 497
	i32 312, ; 498
	i32 200, ; 499
	i32 125, ; 500
	i32 118, ; 501
	i32 38, ; 502
	i32 115, ; 503
	i32 47, ; 504
	i32 142, ; 505
	i32 117, ; 506
	i32 34, ; 507
	i32 175, ; 508
	i32 95, ; 509
	i32 53, ; 510
	i32 266, ; 511
	i32 129, ; 512
	i32 153, ; 513
	i32 182, ; 514
	i32 24, ; 515
	i32 161, ; 516
	i32 243, ; 517
	i32 215, ; 518
	i32 148, ; 519
	i32 104, ; 520
	i32 89, ; 521
	i32 231, ; 522
	i32 60, ; 523
	i32 142, ; 524
	i32 100, ; 525
	i32 5, ; 526
	i32 13, ; 527
	i32 122, ; 528
	i32 135, ; 529
	i32 28, ; 530
	i32 307, ; 531
	i32 196, ; 532
	i32 72, ; 533
	i32 241, ; 534
	i32 24, ; 535
	i32 229, ; 536
	i32 270, ; 537
	i32 267, ; 538
	i32 324, ; 539
	i32 137, ; 540
	i32 222, ; 541
	i32 238, ; 542
	i32 168, ; 543
	i32 198, ; 544
	i32 271, ; 545
	i32 303, ; 546
	i32 101, ; 547
	i32 123, ; 548
	i32 242, ; 549
	i32 186, ; 550
	i32 163, ; 551
	i32 167, ; 552
	i32 245, ; 553
	i32 39, ; 554
	i32 201, ; 555
	i32 311, ; 556
	i32 17, ; 557
	i32 171, ; 558
	i32 324, ; 559
	i32 323, ; 560
	i32 137, ; 561
	i32 150, ; 562
	i32 234, ; 563
	i32 155, ; 564
	i32 130, ; 565
	i32 19, ; 566
	i32 65, ; 567
	i32 177, ; 568
	i32 147, ; 569
	i32 173, ; 570
	i32 47, ; 571
	i32 213, ; 572
	i32 331, ; 573
	i32 220, ; 574
	i32 79, ; 575
	i32 61, ; 576
	i32 106, ; 577
	i32 269, ; 578
	i32 224, ; 579
	i32 49, ; 580
	i32 255, ; 581
	i32 328, ; 582
	i32 266, ; 583
	i32 14, ; 584
	i32 185, ; 585
	i32 68, ; 586
	i32 171, ; 587
	i32 230, ; 588
	i32 234, ; 589
	i32 210, ; 590
	i32 333, ; 591
	i32 195, ; 592
	i32 78, ; 593
	i32 239, ; 594
	i32 108, ; 595
	i32 223, ; 596
	i32 265, ; 597
	i32 67, ; 598
	i32 63, ; 599
	i32 27, ; 600
	i32 160, ; 601
	i32 232, ; 602
	i32 10, ; 603
	i32 201, ; 604
	i32 11, ; 605
	i32 78, ; 606
	i32 126, ; 607
	i32 83, ; 608
	i32 187, ; 609
	i32 66, ; 610
	i32 107, ; 611
	i32 65, ; 612
	i32 128, ; 613
	i32 122, ; 614
	i32 77, ; 615
	i32 280, ; 616
	i32 270, ; 617
	i32 332, ; 618
	i32 8, ; 619
	i32 238, ; 620
	i32 2, ; 621
	i32 44, ; 622
	i32 283, ; 623
	i32 156, ; 624
	i32 128, ; 625
	i32 268, ; 626
	i32 23, ; 627
	i32 133, ; 628
	i32 226, ; 629
	i32 257, ; 630
	i32 327, ; 631
	i32 309, ; 632
	i32 29, ; 633
	i32 225, ; 634
	i32 62, ; 635
	i32 203, ; 636
	i32 90, ; 637
	i32 87, ; 638
	i32 148, ; 639
	i32 205, ; 640
	i32 36, ; 641
	i32 86, ; 642
	i32 246, ; 643
	i32 183, ; 644
	i32 322, ; 645
	i32 317, ; 646
	i32 186, ; 647
	i32 50, ; 648
	i32 6, ; 649
	i32 90, ; 650
	i32 329, ; 651
	i32 21, ; 652
	i32 162, ; 653
	i32 96, ; 654
	i32 50, ; 655
	i32 113, ; 656
	i32 262, ; 657
	i32 130, ; 658
	i32 181, ; 659
	i32 76, ; 660
	i32 27, ; 661
	i32 239, ; 662
	i32 261, ; 663
	i32 7, ; 664
	i32 211, ; 665
	i32 202, ; 666
	i32 110, ; 667
	i32 262, ; 668
	i32 248 ; 669
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
