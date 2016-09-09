.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/ExtendedPropertiesConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/Utils$CalendarBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LRE:Ljava/lang/String;

.field private static final LRM:Ljava/lang/String;

.field private static final PDF:Ljava/lang/String;

.field private static final PERMISSIONS_CALENDAR:[Ljava/lang/String;

.field public static final PERMISSIONS_CALL:[Ljava/lang/String;

.field private static final PERMISSIONS_CONTACTS:[Ljava/lang/String;

.field private static final PERMISSIONS_CONTACTS_AND_LOCATION:[Ljava/lang/String;

.field private static final PERMISSIONS_LOCATION:[Ljava/lang/String;

.field public static final PERMISSIONS_MANDATORY:[Ljava/lang/String;

.field private static final PRESET_ORIENTATIONS:[I

.field private static final RLE:Ljava/lang/String;

.field private static final RLM:Ljava/lang/String;

.field public static final SINE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

.field private static final sColorsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorsIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLightColorVariants:Landroid/util/SparseIntArray;

.field private static final sUpdatedColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, -0xc0ae4b

    const v6, -0xf47fbd

    const v5, -0xfc641b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_CALENDAR:[Ljava/lang/String;

    .line 158
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_CONTACTS:[Ljava/lang/String;

    .line 161
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_CONTACTS_AND_LOCATION:[Ljava/lang/String;

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_MANDATORY:[Ljava/lang/String;

    .line 171
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_CALL:[Ljava/lang/String;

    .line 191
    const/16 v0, 0x202a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->LRE:Ljava/lang/String;

    .line 196
    const/16 v0, 0x202b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->RLE:Ljava/lang/String;

    .line 201
    const/16 v0, 0x202c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->PDF:Ljava/lang/String;

    .line 206
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->LRM:Ljava/lang/String;

    .line 211
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/Utils;->RLM:Ljava/lang/String;

    .line 333
    new-instance v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-direct {v0}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;-><init>()V

    sput-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    .line 334
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/Utils;->sVersion:Ljava/lang/String;

    .line 342
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/Utils;->PRESET_ORIENTATIONS:[I

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    .line 357
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x7c5de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, -0x2b0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x5a8c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xbaee2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x8ac9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x109400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const/16 v1, -0x52ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xf6d00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x52e9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x940da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x4167d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x1b3bbf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x4c2394

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x3f35cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x842eb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x834cbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xe9589b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xbd296e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xff6978

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x6d1e40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xcc4987

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x601e19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x603919

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xbd7a0c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xb67919

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x656301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x867935

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x466501

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x4c6225

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x5b851e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x619651

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x328b1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x71db56

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x335954

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x52eba9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x96e4e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x27e4a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x2f949c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x19838d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x538da2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x86aab8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x3d3d3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x9e9e9f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x354241

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x586472

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x23ded9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, -0x2b0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const/16 v1, -0x4788

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xbaee2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x428a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x940da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xae48b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x851841

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xcc4987

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xb92925

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xab7b13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x5b4204

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x867935

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x245201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x71db56

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const/16 v1, -0x7784

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x19838d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x1e1e1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x9e9e9f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const/high16 v1, -0x2c0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, -0x2b0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xcafe3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xbaee2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x119500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x109400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x106e00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xf6d00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xa41db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x940da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x1d34b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x1b3bbf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x4036ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x3f35cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x844dbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x834cbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xf580be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xff6a79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xff6978

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xfd651c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xbe7b0d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0xbd7a0c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0xc0a357

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x877a36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x867935

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x4d6326

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x4c6225

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x72dc57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x71db56

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x53ecaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x52eba9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x28e5a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x27e4a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x1a848e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x19838d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x87abb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x86aab8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    const v1, -0x9c9c9d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x9e9e9f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    .line 424
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "d50000"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "f4511e"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "ef6c00"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "f09300"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "f6bf26"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "e4c441"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "c0ca33"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "7cb342"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "0b8043"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "009688"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "33b679"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "039be5"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "4285f4"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "3f51b5"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "7986cb"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "b39ddb"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "9e69af"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "8e24aa"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "ad1457"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "d81b60"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "e67c73"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "795548"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "616161"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    const-string v1, "a79b8e"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    .line 456
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const/high16 v1, -0x2b0000

    const v2, -0xb383d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xbaee2

    const/16 v2, -0x3344

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 458
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x109400

    const/16 v2, -0x1f4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 459
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xf6d00

    const v2, -0x3174e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x940da

    const v2, -0x3174e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x1b3bbf

    const v2, -0x3174e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 462
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x3f35cd

    const v2, -0xf0b3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x834cbe

    const v2, -0x231238

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 464
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x481e33

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 465
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xff6978

    const v2, -0x4d2025

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 466
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xcc4987

    const v2, -0x481e33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x4c1a04

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 468
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xbd7a0c

    const v2, -0x392504

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 469
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x3a3517

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 470
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x867935

    const v2, -0x3a3517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 471
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x4c6225

    const v2, -0x2e3b17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 472
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x619651

    const v2, -0x2e3b17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 473
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x71db56

    const v2, -0x1e4119

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 474
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x52eba9

    const v2, -0x74430

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 475
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x27e4a0

    const v2, -0x74430

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 476
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x19838d

    const v2, -0xb383d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 477
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x86aab8

    const v2, -0x283338

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 478
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x9e9e9f

    const v2, -0x111112

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 479
    sget-object v0, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x586472

    const v2, -0x283338

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 548
    new-instance v0, Lcom/android/calendar/Utils$1;

    invoke-direct {v0}, Lcom/android/calendar/Utils$1;-><init>()V

    sput-object v0, Lcom/android/calendar/Utils;->sColorsComparator:Ljava/util/Comparator;

    .line 569
    new-instance v0, Lcom/android/calendar/Utils$2;

    invoke-direct {v0}, Lcom/android/calendar/Utils$2;-><init>()V

    sput-object v0, Lcom/android/calendar/Utils;->SINE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void

    .line 342
    :array_0
    .array-data 4
        0x5a
        0x10e
        0x0
        0x168
    .end array-data
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lcom/android/calendar/Utils;->getSetOfGoogleAccountsThatShouldBeSyncable(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static adjustColorBrightnessAndSaturation(I)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1249
    invoke-static {p0}, Lcom/android/calendar/Utils;->colorToHsb(I)[F

    move-result-object v0

    .line 1250
    aget v1, v0, v4

    .line 1252
    const v2, 0x3f4a3d71    # 0.79f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1254
    aget v1, v0, v3

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 1255
    aget v1, v0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v3

    .line 1256
    aget v1, v0, v4

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 1259
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    aget v2, v0, v3

    aget v0, v0, v4

    invoke-static {v1, v2, v0}, Lcom/android/calendar/Utils;->hsbToRgb(FFF)I

    move-result v0

    return v0
.end method

.method public static adjustColorLightness(IF)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1267
    invoke-static {p0}, Lcom/android/calendar/Utils;->colorToHsl(I)[F

    move-result-object v0

    .line 1269
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, v0, v3

    mul-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v3

    .line 1270
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/android/calendar/Utils;->hslToRgb(FFF)I

    move-result v0

    return v0
.end method

.method public static blendColor(II)I
    .locals 2

    .prologue
    .line 1679
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/android/calendar/Utils;->blendColor(IIF)I

    move-result v0

    return v0
.end method

.method public static blendColor(IIF)I
    .locals 5

    .prologue
    .line 1693
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 1694
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/android/calendar/Utils;->linearInterpolate(IIF)F

    move-result v1

    .line 1695
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/android/calendar/Utils;->linearInterpolate(IIF)F

    move-result v2

    .line 1696
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/android/calendar/Utils;->linearInterpolate(IIF)F

    move-result v3

    .line 1698
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static checkArgument(Z)V
    .locals 1

    .prologue
    .line 4230
    if-nez p0, :cond_0

    .line 4231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4233
    :cond_0
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1

    .prologue
    .line 2837
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 2843
    :goto_0
    return p1

    .line 2840
    :cond_0
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_1

    move p1, p2

    .line 2841
    goto :goto_0

    :cond_1
    move p1, p0

    .line 2843
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0

    .prologue
    .line 2813
    if-gt p0, p1, :cond_0

    .line 2819
    :goto_0
    return p1

    .line 2816
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    .line 2817
    goto :goto_0

    :cond_1
    move p1, p0

    .line 2819
    goto :goto_0
.end method

.method public static clampAndLog(FFF)F
    .locals 5

    .prologue
    .line 2827
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    .line 2828
    :cond_0
    const-string v0, "CalUtils"

    const-string v1, "Value must be between %f and %f, found %f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2830
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/calendar/Utils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public static clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 2880
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2881
    return-void
.end method

.method public static colorFromEvent(Lcom/google/calendar/v2/client/service/api/events/Event;)I
    .locals 1

    .prologue
    .line 1547
    invoke-static {p0}, Lcom/android/calendar/Utils;->getEventColor(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    return v0
.end method

.method private static colorToHsb(I)[F
    .locals 4

    .prologue
    .line 1289
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1290
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/calendar/Utils;->rgbToHsb(III[F)V

    .line 1292
    return-object v0
.end method

.method private static colorToHsl(I)[F
    .locals 4

    .prologue
    .line 1278
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1279
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/calendar/Utils;->rgbToHsl(III[F)V

    .line 1281
    return-object v0
.end method

.method public static colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I
    .locals 2

    .prologue
    .line 1516
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/common/Color;->toInt()I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public static compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 4246
    if-eqz p0, :cond_0

    if-nez p1, :cond_4

    .line 4247
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    move v1, v0

    .line 4249
    :cond_1
    :goto_1
    return v1

    .line 4247
    :cond_2
    if-nez p0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 4249
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public static containsTaskBundle(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 2655
    invoke-static {p0}, Lcom/android/calendar/event/EventInfoFragment;->readTimelineItemFromIntent(Landroid/content/Intent;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 2656
    instance-of v0, v0, Lcom/android/calendar/task/TimelineTaskBundle;

    return v0
.end method

.method public static convertAlldayLocalToUTC(Lcom/android/calendar/time/Time;JLjava/lang/String;)J
    .locals 3

    .prologue
    .line 1161
    if-nez p0, :cond_0

    .line 1162
    new-instance p0, Lcom/android/calendar/time/Time;

    invoke-direct {p0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 1164
    :cond_0
    iput-object p3, p0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 1165
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/time/Time;->set(J)V

    .line 1166
    const-string v0, "UTC"

    iput-object v0, p0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 1167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/time/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J
    .locals 3

    .prologue
    .line 1151
    if-nez p0, :cond_0

    .line 1152
    new-instance p0, Lcom/android/calendar/time/Time;

    invoke-direct {p0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 1154
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 1155
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/time/Time;->set(J)V

    .line 1156
    iput-object p3, p0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 1157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/time/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertChildViewCoordinates(Landroid/view/View;Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 4

    .prologue
    .line 3245
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 3246
    iget v0, p2, Landroid/graphics/PointF;->y:F

    .line 3248
    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 3249
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 3250
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-float/2addr v1, v0

    .line 3251
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3252
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_0

    .line 3253
    const/4 v0, 0x0

    .line 3261
    :goto_1
    return v0

    .line 3255
    :cond_0
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    move v0, v1

    move v1, v2

    .line 3256
    goto :goto_0

    .line 3258
    :cond_1
    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 3259
    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 3261
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static convertToRecurrenceData(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;
    .locals 2

    .prologue
    .line 3380
    if-nez p0, :cond_0

    .line 3381
    const/4 v0, 0x0

    .line 3383
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    invoke-direct {v0, v1, p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;-><init>(Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static convertToRrule(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3373
    if-nez p0, :cond_0

    .line 3374
    const/4 v0, 0x0

    .line 3376
    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;->getOriginalRecurrenceProto()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static createEmailAttendeesIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2398
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2401
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2402
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 2405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both toEmails and ccEmails are empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object p3, p4

    move-object p4, v0

    .line 2416
    :cond_1
    if-eqz p1, :cond_9

    .line 2417
    sget v0, Lcom/android/calendar/R$string;->email_subject_prefix:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 2425
    :goto_1
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 2426
    const-string v0, "mailto"

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2431
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 2432
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 2435
    const-string v5, "to"

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2432
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2417
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2440
    :cond_3
    if-eqz v1, :cond_4

    .line 2441
    const-string v0, "subject"

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2445
    :cond_4
    if-eqz p2, :cond_5

    .line 2446
    const-string v0, "body"

    invoke-virtual {v4, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2450
    :cond_5
    if-eqz p4, :cond_6

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2451
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2452
    const-string v2, "cc"

    invoke-virtual {v4, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 2458
    :cond_6
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2459
    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2461
    const/4 v2, 0x7

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2467
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2471
    if-eqz p2, :cond_8

    .line 2472
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2475
    :cond_8
    invoke-static {}, Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;->getInstance()Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->email_picker_label:I

    .line 2476
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2475
    invoke-virtual {v0, p0, v2, v1, p5}, Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;->createCustomChooser(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public static createPluralString(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 4025
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createProductSans(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 2582
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/ProductSans-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 2574
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2577
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public static drawRtlCompatibleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Z)V
    .locals 3

    .prologue
    .line 1744
    if-eqz p2, :cond_0

    .line 1745
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 1746
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1747
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1748
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1749
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1750
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1751
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1755
    :goto_0
    return-void

    .line 1753
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 2775
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 4036
    if-nez p0, :cond_1

    .line 4049
    :cond_0
    :goto_0
    return-void

    .line 4041
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4042
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 4045
    invoke-static {p0}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetCallerIsSyncAdapterAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4046
    if-eqz v0, :cond_0

    .line 4047
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static forceTextAlignment(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1618
    if-nez p0, :cond_0

    .line 1619
    const/4 v0, 0x0

    .line 1626
    :goto_0
    return-object v0

    .line 1621
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/calendar/Utils;->RLM:Ljava/lang/String;

    .line 1622
    :goto_1
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 1623
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1622
    invoke-interface {v1, p0, v3, v2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    .line 1624
    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/calendar/Utils;->RLE:Ljava/lang/String;

    .line 1625
    :goto_2
    new-array v2, v6, [Ljava/lang/CharSequence;

    aput-object v1, v2, v3

    aput-object p0, v2, v4

    sget-object v1, Lcom/android/calendar/Utils;->PDF:Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1626
    new-array v2, v6, [Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1621
    :cond_1
    sget-object v0, Lcom/android/calendar/Utils;->LRM:Ljava/lang/String;

    goto :goto_1

    .line 1624
    :cond_2
    sget-object v1, Lcom/android/calendar/Utils;->LRE:Ljava/lang/String;

    goto :goto_2
.end method

.method public static forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1637
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static forceTextAlignmentOrUseDefault(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1655
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    :goto_0
    return-object p2

    :cond_0
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static forceTextAlignmentOrUseDefault(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1670
    invoke-static {p0, p1, p2}, Lcom/android/calendar/Utils;->forceTextAlignmentOrUseDefault(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7

    .prologue
    .line 706
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 722
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/lang/String;
    .locals 10

    .prologue
    .line 742
    sget-object v1, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 737
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatSingleDay(Landroid/content/Context;JIJ)Ljava/lang/String;
    .locals 9

    .prologue
    .line 2228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2229
    const/16 v6, 0x10

    .line 2230
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 2231
    const/16 v6, 0x12

    .line 2233
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 2234
    const/high16 v0, 0x80000

    or-int/2addr v6, v0

    .line 2236
    :cond_1
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_2

    .line 2237
    const/high16 v0, 0x10000

    or-int/2addr v6, v0

    .line 2240
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v0, p1

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->isTodayOrTomorrow(JJJ)I

    move-result v0

    .line 2241
    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 2242
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_5

    .line 2243
    sget v0, Lcom/android/calendar/R$string;->today:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2250
    :goto_0
    return-object v0

    .line 2245
    :cond_3
    const/4 v1, 0x2

    if-ne v1, v0, :cond_4

    .line 2246
    sget v0, Lcom/android/calendar/R$string;->tomorrow:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    .line 2248
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2250
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAccessibilityDateTimes(Landroid/content/Context;IZJJLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 11

    .prologue
    .line 2198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2201
    if-nez p2, :cond_0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    cmp-long v2, p3, p5

    if-eqz v2, :cond_0

    .line 2202
    invoke-static/range {p3 .. p7}, Lcom/android/calendar/Utils;->singleDayEvent(JJLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2203
    :cond_0
    const/4 v2, 0x0

    .line 2220
    :goto_0
    return-object v2

    .line 2206
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2207
    and-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_2

    .line 2208
    new-instance v2, Lcom/android/calendar/time/Time;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {v2, p3, p4}, Lcom/android/calendar/time/Time;->set(J)V

    .line 2210
    iget-wide v6, v2, Lcom/android/calendar/time/Time;->gmtoff:J

    move-object v2, p0

    move-wide v3, p3

    move v5, p1

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->formatSingleDay(Landroid/content/Context;JIJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    sget v2, Lcom/android/calendar/R$string;->date_comma_space:I

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    :cond_2
    const/4 v8, 0x1

    move-object v3, p0

    move-wide v4, p3

    move-wide v6, p3

    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    sget v2, Lcom/android/calendar/R$string;->date_space_dash_space:I

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    const/4 v8, 0x1

    move-object v3, p0

    move-wide/from16 v4, p5

    move-wide/from16 v6, p5

    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2220
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getAlternateCalendarPref(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1009
    invoke-static {}, Lcom/android/calendar/Utils;->isNOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1032
    :goto_0
    return v0

    .line 1012
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1013
    const-string v2, "preferences_alternate_calendar"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1016
    packed-switch v1, :pswitch_data_0

    .line 1030
    const-string v2, "CalUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "unknown alternate calendar preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Default to ALT_CAL_NONE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 1027
    goto :goto_0

    .line 1016
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getAppApkVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 4138
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4139
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4142
    :cond_0
    :goto_0
    return v0

    .line 4140
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCalendarNameToDisplay(Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3529
    iget-boolean v0, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isPrimary:Z

    iget-object v1, p0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->displayName:Ljava/lang/String;

    .line 3530
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 3529
    invoke-static {v0, v1, v2, p1}, Lcom/android/calendar/Utils;->getCalendarNameToDisplay(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCalendarNameToDisplay(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3545
    if-nez p0, :cond_1

    .line 3555
    :cond_0
    :goto_0
    return-object p1

    .line 3550
    :cond_1
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSyncFactory()Lcom/android/calendar/timely/settings/SyncFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/timely/settings/SyncFactory;->getSyncableAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p3

    .line 3553
    goto :goto_0
.end method

.method public static getCalendarOwnerAccount(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2554
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    .line 2555
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "account_name"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    .line 2554
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2560
    if-eqz v1, :cond_0

    .line 2562
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2563
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2566
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2569
    :cond_0
    :goto_0
    return-object v3

    .line 2566
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getColorNames(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1497
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->api_color_names:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1499
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 1502
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1503
    sget-object v5, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1504
    sget-object v5, Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1508
    :cond_1
    return-object v3
.end method

.method public static getConfigBool(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 1213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static getDateInfo(I)[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2987
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 2988
    invoke-virtual {v0, p0}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 2989
    invoke-virtual {v0, v4}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 2991
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 2992
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/calendar/time/Time;->year:I

    aput v3, v1, v2

    .line 2993
    iget v2, v0, Lcom/android/calendar/time/Time;->month:I

    aput v2, v1, v4

    .line 2994
    const/4 v2, 0x2

    iget v0, v0, Lcom/android/calendar/time/Time;->monthDay:I

    aput v0, v1, v2

    .line 2995
    return-object v1
.end method

.method public static getDayEventsDescription(Lcom/android/calendar/timely/MonthData;ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 3267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3269
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3270
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/MonthData;->getItems(I)Ljava/util/List;

    move-result-object v0

    .line 3278
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 3280
    instance-of v9, v0, Lcom/android/calendar/timely/TimelineBirthday;

    if-eqz v9, :cond_0

    .line 3281
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    :goto_1
    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v1

    move v1, v0

    .line 3293
    goto :goto_0

    .line 3282
    :cond_0
    instance-of v9, v0, Lcom/android/calendar/timely/TimelineHoliday;

    if-eqz v9, :cond_1

    .line 3283
    add-int/lit8 v5, v5, 0x1

    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_1

    .line 3284
    :cond_1
    instance-of v9, v0, Lcom/android/calendar/task/TimelineTask;

    if-eqz v9, :cond_2

    .line 3285
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_1

    .line 3286
    :cond_2
    instance-of v9, v0, Lcom/android/calendar/task/TimelineTaskBundle;

    if-eqz v9, :cond_3

    .line 3287
    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->getNumReminders()I

    move-result v0

    add-int/2addr v3, v0

    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_1

    .line 3288
    :cond_3
    instance-of v0, v0, Lcom/android/calendar/groove/TimelineGroove;

    if-eqz v0, :cond_4

    .line 3289
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_1

    .line 3291
    :cond_4
    add-int/lit8 v6, v6, 0x1

    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_1

    :cond_5
    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    .line 3297
    :cond_6
    add-int v0, v4, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    if-nez v0, :cond_8

    .line 3298
    sget v0, Lcom/android/calendar/R$string;->no_events:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3336
    :cond_7
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3301
    :cond_8
    if-lez v4, :cond_9

    .line 3302
    sget v0, Lcom/android/calendar/R$plurals;->nums_birthdays:I

    new-array v8, v10, [Ljava/lang/Object;

    .line 3303
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    .line 3302
    invoke-virtual {p2, v0, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3308
    :cond_9
    if-lez v5, :cond_a

    .line 3309
    sget v0, Lcom/android/calendar/R$plurals;->nums_holidays:I

    new-array v4, v10, [Ljava/lang/Object;

    .line 3310
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v2

    .line 3309
    invoke-virtual {p2, v0, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3311
    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3315
    :cond_a
    if-lez v3, :cond_b

    .line 3316
    sget v0, Lcom/android/calendar/R$plurals;->nums_reminders:I

    new-array v4, v10, [Ljava/lang/Object;

    .line 3317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 3316
    invoke-virtual {p2, v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3322
    :cond_b
    if-lez v1, :cond_c

    .line 3323
    sget v0, Lcom/android/calendar/R$plurals;->grooves_count:I

    new-array v3, v10, [Ljava/lang/Object;

    .line 3324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3323
    invoke-virtual {p2, v0, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3325
    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3329
    :cond_c
    if-lez v6, :cond_7

    .line 3330
    sget v0, Lcom/android/calendar/R$plurals;->events_count:I

    new-array v1, v10, [Ljava/lang/Object;

    .line 3331
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3330
    invoke-virtual {p2, v0, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3332
    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static getDefaultVibrate(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 746
    const-string v2, "preferences_alerts_vibrateWhen"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    :try_start_0
    const-string v2, "preferences_alerts_vibrateWhen"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    if-eqz v2, :cond_0

    sget v3, Lcom/android/calendar/R$string;->prefDefault_alerts_vibrate_true:I

    .line 754
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 753
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 755
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "preferences_alerts_vibrateWhen"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 756
    const-string v3, "CalUtils"

    const-string v4, "Migrating KEY_ALERTS_VIBRATE_WHEN(%s) to KEY_ALERTS_VIBRATE = %b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    .line 757
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    .line 756
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 753
    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    const-string v2, "CalUtils"

    const-string v3, "KEY_ALERTS_VIBRATE_WHEN preference is not a String type"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 763
    :cond_1
    const-string v0, "preferences_alerts_vibrate"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1
.end method

.method private static getDiffInDays(JJJ)I
    .locals 2

    .prologue
    .line 2365
    invoke-static {p2, p3, p4, p5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 2366
    invoke-static {p0, p1, p4, p5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2365
    return v0
.end method

.method public static getDisplayColorFromColor(I)I
    .locals 5

    .prologue
    .line 1226
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1227
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1234
    :cond_0
    :goto_0
    return p0

    .line 1228
    :cond_1
    sget-object v0, Lcom/android/calendar/Utils;->sUpdatedColors:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    const-string v0, "CalUtils"

    const-string v1, "Found untenable color: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1234
    invoke-static {p0}, Lcom/android/calendar/Utils;->adjustColorBrightnessAndSaturation(I)I

    move-result p0

    goto :goto_0
.end method

.method public static getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 14

    .prologue
    .line 2166
    const/4 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v12}, Lcom/android/calendar/Utils;->getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Z

    move-result v0

    return v0
.end method

.method private static getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Z
    .locals 16

    .prologue
    .line 2052
    const/16 v4, 0x10

    .line 2053
    and-int/lit8 v5, p8, 0x1

    if-nez v5, :cond_0

    .line 2054
    const/16 v4, 0x12

    .line 2056
    :cond_0
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_1

    .line 2057
    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    .line 2061
    :cond_1
    const/16 v10, 0x1401

    .line 2062
    and-int/lit8 v5, p8, 0x2

    if-eqz v5, :cond_b

    .line 2063
    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    .line 2064
    const v10, 0x81401

    move v11, v4

    .line 2067
    :goto_0
    new-instance v13, Lcom/android/calendar/time/Time;

    move-object/from16 v0, p6

    invoke-direct {v13, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2068
    move-wide/from16 v0, p0

    invoke-virtual {v13, v0, v1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 2069
    invoke-virtual/range {p9 .. p9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 2071
    const/4 v12, 0x0

    .line 2073
    if-eqz p7, :cond_7

    .line 2075
    const/4 v4, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p6

    invoke-static {v4, v0, v1, v2}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v4

    .line 2076
    const/4 v6, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v6, v0, v1, v2}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 2077
    move-object/from16 v0, p6

    invoke-static {v4, v5, v6, v7, v0}, Lcom/android/calendar/Utils;->singleDayEvent(JJLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2079
    iget-wide v8, v13, Lcom/android/calendar/time/Time;->gmtoff:J

    move-wide/from16 v6, p4

    .line 2080
    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->isTodayOrTomorrow(JJJ)I

    move-result v6

    .line 2081
    const/4 v7, 0x1

    if-ne v7, v6, :cond_3

    .line 2082
    sget v4, Lcom/android/calendar/R$string;->today:I

    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v4, v12

    :goto_2
    move v12, v4

    .line 2126
    :goto_3
    invoke-virtual/range {p10 .. p10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 2127
    invoke-virtual/range {p10 .. p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2128
    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2129
    const/4 v12, 0x0

    .line 2131
    :cond_2
    return v12

    .line 2083
    :cond_3
    const/4 v7, 0x2

    if-ne v7, v6, :cond_4

    .line 2084
    sget v4, Lcom/android/calendar/R$string;->tomorrow:I

    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2086
    :cond_4
    move-object/from16 v0, p9

    invoke-static {v0, v4, v5, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2091
    :cond_5
    if-eqz p12, :cond_6

    .line 2093
    move-object/from16 v0, p9

    move-object/from16 v1, p6

    invoke-static {v0, v4, v5, v11, v1}, Lcom/android/calendar/Utils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2092
    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    const-wide/16 v4, 0x1

    sub-long v4, v6, v4

    .line 2095
    move-object/from16 v0, p9

    move-object/from16 v1, p6

    invoke-static {v0, v4, v5, v11, v1}, Lcom/android/calendar/Utils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2094
    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    :goto_4
    const/4 v4, 0x1

    goto :goto_2

    .line 2097
    :cond_6
    move-object/from16 v0, p9

    invoke-static {v0, v4, v5, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    const-wide/16 v4, 0x1

    sub-long v4, v6, v4

    move-object/from16 v0, p9

    invoke-static {v0, v4, v5, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2102
    :cond_7
    iget-wide v8, v13, Lcom/android/calendar/time/Time;->gmtoff:J

    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->singleDayEvent(JJJ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2104
    iget-wide v8, v13, Lcom/android/calendar/time/Time;->gmtoff:J

    move-object/from16 v4, p9

    move-wide/from16 v5, p0

    move/from16 v7, p8

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->formatSingleDay(Landroid/content/Context;JIJ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    if-eqz p12, :cond_8

    move-object/from16 v5, p9

    move-wide/from16 v6, p0

    move-wide/from16 v8, p2

    move-object/from16 v11, p6

    .line 2106
    invoke-static/range {v5 .. v11}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_8
    move-object/from16 v5, p9

    move-wide/from16 v6, p0

    move-wide/from16 v8, p2

    .line 2109
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 2112
    :cond_9
    or-int/2addr v10, v11

    .line 2113
    if-eqz p12, :cond_a

    move-object/from16 v5, p9

    move-wide/from16 v6, p0

    move-wide/from16 v8, p0

    move-object/from16 v11, p6

    .line 2114
    invoke-static/range {v5 .. v11}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p9

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    move-object/from16 v11, p6

    .line 2116
    invoke-static/range {v5 .. v11}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    :goto_5
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 v5, p9

    move-wide/from16 v6, p0

    move-wide/from16 v8, p0

    .line 2119
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p9

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    .line 2121
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    move v11, v4

    goto/16 :goto_0
.end method

.method public static getDisplayedDateTimesInTimezone(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 14

    .prologue
    .line 2146
    const/4 v12, 0x1

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v12}, Lcom/android/calendar/Utils;->getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Z

    move-result v0

    return v0
.end method

.method public static getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 1870
    const/4 v8, 0x1

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayedDatetime(JJJLjava/lang/String;ZZLandroid/content/Context;)Ljava/lang/String;
    .locals 20

    .prologue
    .line 1892
    const/16 v10, 0x12

    .line 1894
    invoke-virtual/range {p9 .. p9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1895
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ja"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "ko"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1896
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1898
    const v10, 0x8012

    .line 1901
    :cond_0
    const/16 v16, 0x1

    .line 1903
    new-instance v17, Lcom/android/calendar/time/Time;

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 1904
    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/time/Time;->set(J)V

    .line 1905
    invoke-virtual/range {p9 .. p9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1906
    const/4 v11, 0x0

    .line 1907
    if-eqz p7, :cond_5

    .line 1909
    const/4 v4, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p6

    invoke-static {v4, v0, v1, v2}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v4

    .line 1910
    const/4 v6, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v6, v0, v1, v2}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 1911
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->singleDayEvent(JJJ)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1913
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    move-wide/from16 v6, p4

    .line 1914
    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->isTodayOrTomorrow(JJJ)I

    move-result v4

    .line 1915
    const/4 v5, 0x1

    if-ne v5, v4, :cond_3

    .line 1916
    if-eqz p8, :cond_2

    .line 1917
    sget v4, Lcom/android/calendar/R$string;->today:I

    .line 1916
    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1923
    :goto_1
    if-nez v4, :cond_1

    .line 1926
    new-instance v5, Ljava/util/Formatter;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x32

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1927
    const-string v11, "UTC"

    move-object/from16 v4, p9

    move-wide/from16 v6, p0

    move-wide/from16 v8, p2

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v4

    .line 1928
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1966
    :cond_1
    :goto_2
    return-object v4

    .line 1917
    :cond_2
    sget v4, Lcom/android/calendar/R$string;->today_lowercase:I

    goto :goto_0

    .line 1918
    :cond_3
    const/4 v5, 0x2

    if-ne v5, v4, :cond_b

    .line 1919
    if-eqz p8, :cond_4

    .line 1920
    sget v4, Lcom/android/calendar/R$string;->tomorrow:I

    .line 1919
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1920
    :cond_4
    sget v4, Lcom/android/calendar/R$string;->tomorrow_lowercase:I

    goto :goto_3

    .line 1931
    :cond_5
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->singleDayEvent(JJJ)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v11, p9

    move-wide/from16 v12, p0

    move-wide/from16 v14, p2

    .line 1933
    invoke-static/range {v11 .. v16}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 1936
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    move-wide/from16 v4, p0

    move-wide/from16 v6, p4

    .line 1937
    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->isTodayOrTomorrow(JJJ)I

    move-result v4

    .line 1938
    const/4 v5, 0x1

    if-ne v5, v4, :cond_7

    .line 1940
    if-eqz p8, :cond_6

    .line 1941
    sget v4, Lcom/android/calendar/R$string;->today_at_time_fmt:I

    .line 1942
    :goto_4
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    .line 1940
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1942
    :cond_6
    sget v4, Lcom/android/calendar/R$string;->today_at_time_fmt_lowercase:I

    goto :goto_4

    .line 1944
    :cond_7
    const/4 v5, 0x2

    if-ne v5, v4, :cond_9

    .line 1946
    if-eqz p8, :cond_8

    .line 1947
    sget v4, Lcom/android/calendar/R$string;->tomorrow_at_time_fmt:I

    .line 1948
    :goto_5
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    .line 1946
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1948
    :cond_8
    sget v4, Lcom/android/calendar/R$string;->tomorrow_at_time_fmt_lowercase:I

    goto :goto_5

    :cond_9
    move-object/from16 v5, p9

    move-wide/from16 v6, p0

    move-wide/from16 v8, p2

    .line 1952
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    .line 1954
    sget v5, Lcom/android/calendar/R$string;->date_time_fmt:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v11, v6, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 1960
    :cond_a
    or-int v4, v10, v16

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    const v5, 0x8000

    or-int v10, v4, v5

    move-object/from16 v5, p9

    move-wide/from16 v6, p0

    move-wide/from16 v8, p2

    .line 1962
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_b
    move-object v4, v11

    goto/16 :goto_1
.end method

.method public static getDisplayedRangeForKnownContext(JJJLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 1976
    const/4 v8, 0x1

    .line 1978
    new-instance v9, Lcom/android/calendar/time/Time;

    move-object/from16 v0, p6

    invoke-direct {v9, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 1979
    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 1980
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1982
    iget-wide v6, v9, Lcom/android/calendar/time/Time;->gmtoff:J

    move-wide v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->singleDayEvent(JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v3, p7

    move-wide v4, p0

    move-wide/from16 v6, p2

    .line 1984
    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .line 2010
    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v3, p7

    move-wide v4, p0

    move-wide v6, p0

    .line 1989
    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p7

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    .line 1990
    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1992
    iget-wide v6, v9, Lcom/android/calendar/time/Time;->gmtoff:J

    move-wide/from16 v2, p4

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->getDiffInDays(JJJ)I

    move-result v2

    .line 1994
    if-nez v2, :cond_1

    .line 1996
    sget v2, Lcom/android/calendar/R$string;->today_at_time_fmt:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-virtual {v10, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2007
    :goto_1
    sget v3, Lcom/android/calendar/R$string;->range_with_context_fmt:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v10, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1997
    :cond_1
    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    .line 1999
    sget v2, Lcom/android/calendar/R$string;->tomorrow_at_time_fmt:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-virtual {v10, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2001
    :cond_2
    const/4 v3, 0x7

    if-ge v2, v3, :cond_3

    const/4 v2, 0x2

    .line 2003
    :goto_2
    or-int/2addr v8, v2

    move-object/from16 v3, p7

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2002
    :cond_3
    const v2, 0x10010

    goto :goto_2
.end method

.method public static getDisplayedSingleDate(JLjava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2176
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0, p2}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 2178
    iget-wide v4, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    move-object v0, p4

    move-wide v1, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatSingleDay(Landroid/content/Context;JIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayedTimezone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2295
    const/4 v0, 0x0

    .line 2296
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2298
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 2299
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GMT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2307
    :cond_0
    :goto_0
    return-object p2

    .line 2302
    :cond_1
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0, p2}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 2304
    iget v0, v0, Lcom/android/calendar/time/Time;->isDst:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move-object p2, v0

    goto :goto_0
.end method

.method public static getEventColor(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 1535
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLabelColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    .line 1536
    if-nez v0, :cond_0

    .line 1537
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    .line 1539
    :cond_0
    return-object v0
.end method

.method public static getEventExtrasFlag(II)Z
    .locals 1

    .prologue
    .line 2593
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExtraEventBundle(JLjava/lang/Long;Z)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 884
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 885
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_1

    .line 886
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 887
    if-eqz p2, :cond_0

    .line 888
    const-string v1, "endTime"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 890
    :cond_0
    const-string v1, "allDay"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 892
    :cond_1
    return-object v0
.end method

.method public static getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1042
    invoke-static {p0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1048
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 1054
    :cond_1
    if-ne v0, v1, :cond_2

    .line 1056
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    .line 1058
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1059
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_week_start_day"

    .line 1060
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1061
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1065
    :cond_2
    :goto_0
    return v0

    .line 1051
    :catch_0
    move-exception v0

    .line 1056
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    .line 1058
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1059
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_week_start_day"

    .line 1060
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1061
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1054
    :catchall_0
    move-exception v0

    .line 1056
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 1058
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1059
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_week_start_day"

    .line 1060
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1061
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    throw v0
.end method

.method public static getFirstDayOfWeekAsTime(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 1074
    .line 1075
    invoke-static {p0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v0

    .line 1074
    invoke-static {v0}, Lcom/android/datetimepicker/Utils;->convertDayOfWeekFromCalendarToTime(I)I

    move-result v0

    return v0
.end method

.method public static getFirstDayOfWeekPref(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 987
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 988
    const-string v0, "preferences_week_start_day"

    sget-object v2, Lcom/android/calendar/timely/settings/PreferencesUtils;->WEEK_START_DEFAULT:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    const-string v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 993
    sget-object v0, Lcom/android/calendar/timely/settings/PreferencesUtils;->WEEK_START_DEFAULT:Ljava/lang/String;

    .line 995
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_week_start_day"

    .line 996
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 997
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1000
    :cond_0
    return-object v0
.end method

.method public static getHideDeclinedEvents(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1107
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1108
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getJulianDay(III)I
    .locals 1

    .prologue
    .line 980
    invoke-static {p1, p0}, Lcom/android/calendar/Utils;->getJulianFirstDayFromMonth(II)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getJulianDay(Landroid/content/Context;J)I
    .locals 3

    .prologue
    .line 2719
    new-instance v0, Lcom/android/calendar/time/Time;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2720
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 2721
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 2722
    iget-wide v0, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {p1, p2, v0, v1}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    return v0
.end method

.method public static getJulianFirstDayFromMonth(II)I
    .locals 4

    .prologue
    .line 967
    new-instance v0, Lcom/android/calendar/time/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 968
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/calendar/time/Time;->set(III)V

    .line 969
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v0, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    return v0
.end method

.method public static getJulianFirstDayFromWeeksSinceEpoch(II)I
    .locals 2

    .prologue
    .line 951
    rsub-int/lit8 v0, p1, 0x4

    .line 952
    if-gez v0, :cond_0

    .line 953
    add-int/lit8 v0, v0, 0x7

    .line 956
    :cond_0
    const v1, 0x253d8c    # 3.419992E-39f

    sub-int v0, v1, v0

    .line 957
    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getLaunchFillInIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 8

    .prologue
    .line 4060
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4061
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/events"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4062
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 4063
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 4064
    invoke-static {v1}, Lcom/android/calendar/Utils;->setLaunchActivityFlags(Landroid/content/Intent;)V

    .line 4066
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getViewAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4067
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4068
    const-class v0, Lcom/android/calendar/event/LaunchInfoActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4069
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4070
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4078
    :goto_0
    return-object v1

    .line 4073
    :cond_0
    const-class v0, Lcom/android/calendar/event/LaunchInfoActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4074
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4075
    const-string v0, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getLaunchTimelineItem(Landroid/content/Intent;)Lcom/android/calendar/timely/TimelineItem;
    .locals 2

    .prologue
    .line 2680
    const-string v0, "key_timeline_item"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2681
    if-eqz v0, :cond_0

    .line 2682
    const-string v1, "key_timeline_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2683
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/calendar/timely/TimelineItem;

    if-eqz v1, :cond_0

    .line 2684
    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 2687
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLightDisplayColorForColor(I)I
    .locals 3

    .prologue
    .line 1240
    invoke-static {p0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    .line 1241
    sget-object v1, Lcom/android/calendar/Utils;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v2, -0x111112

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 3499
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3500
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3502
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3504
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3508
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3509
    aget v2, v0, v6

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    aput v2, v0, v6

    .line 3512
    :cond_0
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    .line 3515
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    .line 3516
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 3512
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3518
    return-object v1
.end method

.method public static getMaximumDisplayDimension(Landroid/view/Display;)I
    .locals 2

    .prologue
    .line 1763
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1764
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1765
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static getMaximumWindowDimension(Landroid/content/res/Resources;)I
    .locals 2

    .prologue
    .line 1786
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1787
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1786
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1788
    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getMillisFromJulianDay(I)J
    .locals 2

    .prologue
    .line 2707
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 2708
    invoke-virtual {v0, p0}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 2710
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->toMillisWithFallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMinimumDisplayDimension(Landroid/view/Display;)I
    .locals 2

    .prologue
    .line 1774
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1775
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1776
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2892
    const-string v1, "preferences_quick_responses"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2894
    if-nez v0, :cond_0

    .line 2895
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->quick_response_defaults:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2898
    :cond_0
    return-object v0
.end method

.method public static getRecurrenceDisplayString(Landroid/content/Context;Lcom/android/calendarcommon2/EventRecurrence;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3355
    if-eqz p1, :cond_1

    .line 3356
    instance-of v0, p1, Lcom/android/calendar/CalendarEventRecurrence;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 3357
    check-cast v0, Lcom/android/calendar/CalendarEventRecurrence;

    .line 3359
    iget v1, v0, Lcom/android/calendar/CalendarEventRecurrence;->descriptionRes:I

    if-eqz v1, :cond_0

    .line 3360
    iget v0, v0, Lcom/android/calendar/CalendarEventRecurrence;->descriptionRes:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3369
    :goto_0
    return-object v0

    .line 3363
    :cond_0
    invoke-static {p0, p1, v2, v3}, Lcom/android/recurrencepicker/Utils;->getRepeatString(Landroid/content/Context;Lcom/android/calendarcommon2/EventRecurrence;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 3365
    if-eqz v0, :cond_1

    .line 3366
    sget v1, Lcom/android/calendar/R$string;->repeats_preamble:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3369
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRtlAdjustedImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4090
    invoke-static {p0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4098
    :goto_0
    return-object p1

    .line 4093
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 4094
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 4095
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4097
    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method public static getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 647
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".CalendarRecentSuggestionsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSetOfGoogleAccountsThatShouldBeSyncable(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3202
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3203
    sget-object v0, Lcom/google/android/calendar/Accounts;->GOOGLE_CALENDAR_SYNC_FEATURE:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;[Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 3205
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3207
    :cond_0
    return-object v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 783
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 784
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 788
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 789
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 779
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 793
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 794
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 768
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 769
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_0

    .line 771
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 772
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 774
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static getShortDayOfWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4267
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanMr2OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4268
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    .line 4269
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4271
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 4278
    :goto_0
    return-object v0

    .line 4273
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4274
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4275
    const/4 v1, 0x7

    .line 4276
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x32

    .line 4275
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getShowWeekNumber(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1098
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1099
    const-string v1, "preferences_show_week_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getStartCoordinate(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2514
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2516
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2526
    :goto_0
    return v0

    .line 2519
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2520
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2522
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 2524
    :cond_1
    const-string v0, "CalUtils"

    const-string v1, "No parent to compute start coordinate."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2526
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method public static getTimeZone(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 679
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTodayJulianDay(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 2695
    new-instance v0, Lcom/android/calendar/time/Time;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2696
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 2697
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 2698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    return v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2929
    .line 2930
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2931
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2932
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2936
    :goto_0
    return v0

    .line 2933
    :catch_0
    move-exception v1

    .line 2934
    const-string v1, "CalUtils"

    const-string v2, "Error finding package %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 2935
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 2934
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getWeekNumberFromTime(Lcom/android/calendar/time/Time;Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 1809
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1810
    invoke-static {p1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsTime(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v0

    return v0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 2

    .prologue
    .line 931
    rsub-int/lit8 v0, p1, 0x4

    .line 932
    if-gez v0, :cond_0

    .line 933
    add-int/lit8 v0, v0, 0x7

    .line 935
    :cond_0
    const v1, 0x253d8c    # 3.419992E-39f

    sub-int v0, v1, v0

    .line 936
    sub-int v0, p0, v0

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public static groupOfPermission(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3904
    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 3916
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3904
    :sswitch_0
    const-string v5, "android.permission.READ_CALENDAR"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "android.permission.WRITE_CALENDAR"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v5, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_4
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 3914
    :goto_1
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v2

    .line 3912
    goto :goto_1

    :pswitch_3
    move v0, v3

    .line 3914
    goto :goto_1

    .line 3904
    nop

    :sswitch_data_0
    .sparse-switch
        -0x72f13779 -> :sswitch_0
        -0x3c1ac56 -> :sswitch_4
        0x6afff6d -> :sswitch_5
        0x23fb06fe -> :sswitch_1
        0x4bcdda0f -> :sswitch_3
        0x75dd2d9c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static hasCalendarPermissions(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3825
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3826
    const/4 v0, 0x1

    .line 3840
    :cond_0
    :goto_0
    return v0

    .line 3830
    :cond_1
    invoke-static {p0}, Lcom/google/android/calendar/ApplicationUtils;->isSystemApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "has_granted_calendar_permissions"

    .line 3831
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3834
    :cond_2
    sget-object v1, Lcom/android/calendar/Utils;->PERMISSIONS_CALENDAR:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    .line 3835
    if-eqz v1, :cond_3

    .line 3836
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "calendar_permissions_never_ask_detected"

    .line 3837
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "calendar_permissions_request_count"

    const-wide/16 v4, 0x0

    .line 3838
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    move v0, v1

    .line 3840
    goto :goto_0
.end method

.method public static hasCallPermissions(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3880
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3889
    :goto_0
    return v0

    .line 3883
    :cond_0
    sget-object v1, Lcom/android/calendar/Utils;->PERMISSIONS_CALL:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    .line 3884
    if-eqz v1, :cond_1

    .line 3885
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "call_permissions_never_ask_detected"

    .line 3886
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "call_permissions_request_count"

    const-wide/16 v4, 0x0

    .line 3887
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    move v0, v1

    .line 3889
    goto :goto_0
.end method

.method public static hasContactsAndLocationPermissions(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 3844
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasContactsPermissions(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3848
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3849
    const/4 v0, 0x1

    .line 3863
    :cond_0
    :goto_0
    return v0

    .line 3853
    :cond_1
    invoke-static {p0}, Lcom/google/android/calendar/ApplicationUtils;->isSystemApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "has_granted_contacts_permissions"

    .line 3854
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3857
    :cond_2
    sget-object v1, Lcom/android/calendar/Utils;->PERMISSIONS_CONTACTS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    .line 3858
    if-eqz v1, :cond_3

    .line 3859
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "contacts_permissions_never_ask_detected"

    .line 3860
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "contacts_permissions_request_count"

    const-wide/16 v4, 0x0

    .line 3861
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    move v0, v1

    .line 3863
    goto :goto_0
.end method

.method public static hasLocationPermissions(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 3867
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3868
    const/4 v0, 0x1

    .line 3876
    :cond_0
    :goto_0
    return v0

    .line 3870
    :cond_1
    sget-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 3871
    if-eqz v0, :cond_0

    .line 3872
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "location_permissions_never_ask_detected"

    const/4 v3, 0x0

    .line 3873
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "location_permissions_request_count"

    const-wide/16 v4, 0x0

    .line 3874
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static hasMandatoryPermissions(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 3821
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasCalendarPermissions(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3893
    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    .line 3894
    invoke-static {p0, v4}, Lcom/google/android/calendar/PermissionsUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 3895
    const-string v6, "CalUtils"

    const-string v7, "Permission: %s=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3896
    if-eqz v5, :cond_0

    .line 3900
    :goto_1
    return v0

    .line 3893
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3900
    goto :goto_1
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 2785
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static hideAllDayChips(Ljava/util/List;III)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;III)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2973
    sub-int v0, p2, p1

    add-int/lit8 v2, v0, 0x1

    .line 2974
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 2975
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2976
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2978
    :cond_0
    invoke-static {p0, p1, p2, p3, v3}, Lcom/android/calendar/Utils;->hideAllDayChips(Ljava/util/List;IIILjava/util/List;)V

    .line 2980
    return-object v3
.end method

.method public static hideAllDayChips(Ljava/util/List;IIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 3013
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 3016
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v1

    if-lt v1, p3, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setVisibility(I)V

    .line 3018
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v1

    if-lt v1, p3, :cond_0

    .line 3019
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    invoke-static {v0, p1, p2, p4}, Lcom/android/calendar/Utils;->updateHiddenChipCount(Lcom/android/calendar/timely/TimelineItem;IILjava/util/List;)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3017
    goto :goto_1

    .line 3027
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 3028
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v0

    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_3

    .line 3030
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getStartDay()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3031
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getEndDay()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v5, v4

    .line 3034
    :goto_2
    if-gt v5, v7, :cond_6

    .line 3035
    sub-int v0, v5, p1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 3036
    const/4 v0, 0x1

    .line 3042
    :goto_3
    if-eqz v0, :cond_3

    .line 3043
    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/TimelyChip;->setVisibility(I)V

    move v1, v4

    .line 3044
    :goto_4
    if-gt v1, v7, :cond_3

    .line 3045
    sub-int v4, v1, p1

    sub-int v0, v1, p1

    .line 3046
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3045
    invoke-interface {p4, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3044
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 3034
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 3050
    :cond_5
    return-void

    :cond_6
    move v0, v3

    goto :goto_3
.end method

.method public static hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3578
    if-nez p0, :cond_0

    .line 3589
    :goto_0
    return-void

    .line 3581
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 3582
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 3583
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3586
    :cond_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3588
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private static hsbToHsl(FFF)[F
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1300
    cmpl-float v0, p0, v3

    if-ltz v0, :cond_0

    cmpg-float v0, p0, v5

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1301
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_1

    cmpg-float v0, p1, v5

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1302
    cmpl-float v0, p2, v3

    if-ltz v0, :cond_2

    cmpg-float v0, p2, v5

    if-gtz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1304
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1305
    aput p0, v0, v2

    .line 1307
    const/4 v2, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, p2

    sub-float v4, v6, p1

    mul-float/2addr v3, v4

    aput v3, v0, v2

    .line 1309
    mul-float v2, p2, p1

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v5, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 1314
    aget v2, v0, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    .line 1316
    return-object v0

    :cond_0
    move v0, v2

    .line 1300
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1301
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1302
    goto :goto_2
.end method

.method public static hsbToRgb(FFF)I
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1386
    cmpl-float v0, p0, v3

    if-ltz v0, :cond_0

    cmpg-float v0, p0, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1387
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_1

    cmpg-float v0, p1, v4

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1388
    cmpl-float v0, p2, v3

    if-ltz v0, :cond_2

    cmpg-float v0, p2, v4

    if-gtz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1390
    cmpl-float v0, p1, v3

    if-nez v0, :cond_3

    .line 1391
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1392
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 1396
    :goto_3
    return v0

    :cond_0
    move v0, v2

    .line 1386
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1387
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1388
    goto :goto_2

    .line 1395
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/android/calendar/Utils;->hsbToHsl(FFF)[F

    move-result-object v0

    .line 1396
    aget v2, v0, v2

    aget v1, v0, v1

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v2, v1, v0}, Lcom/android/calendar/Utils;->hslToRgb(FFF)I

    move-result v0

    goto :goto_3
.end method

.method public static hslToRgb(FFF)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1356
    cmpl-float v0, p0, v3

    if-ltz v0, :cond_0

    cmpg-float v0, p0, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1357
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_1

    cmpg-float v0, p1, v4

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1358
    cmpl-float v0, p2, v3

    if-ltz v0, :cond_2

    cmpg-float v0, p2, v4

    if-gtz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1360
    cmpl-float v0, p1, v3

    if-nez v0, :cond_3

    .line 1361
    mul-float v0, p2, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1362
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 1366
    :goto_3
    return v0

    :cond_0
    move v0, v2

    .line 1356
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1357
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1358
    goto :goto_2

    .line 1364
    :cond_3
    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    add-float v0, v4, p1

    mul-float/2addr v0, p2

    .line 1365
    :goto_4
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    sub-float/2addr v1, v0

    .line 1366
    const v2, 0x3eaaaaab

    add-float/2addr v2, p0

    .line 1367
    invoke-static {v1, v0, v2}, Lcom/android/calendar/Utils;->hue2rgb(FFF)F

    move-result v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1368
    invoke-static {v1, v0, p0}, Lcom/android/calendar/Utils;->hue2rgb(FFF)F

    move-result v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const v4, 0x3eaaaaab

    sub-float v4, p0, v4

    .line 1369
    invoke-static {v1, v0, v4}, Lcom/android/calendar/Utils;->hue2rgb(FFF)F

    move-result v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1366
    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_3

    .line 1364
    :cond_4
    add-float v0, p2, p1

    mul-float v1, p2, p1

    sub-float/2addr v0, v1

    goto :goto_4
.end method

.method private static hue2rgb(FFF)F
    .locals 4

    .prologue
    const/high16 v3, 0x40c00000    # 6.0f

    const v2, 0x3f2aaaab

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1323
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 1324
    add-float/2addr p2, v1

    .line 1329
    :cond_0
    :goto_0
    const v0, 0x3e2aaaab

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 1330
    sub-float v0, p1, p0

    mul-float/2addr v0, v3

    mul-float/2addr v0, p2

    add-float p1, p0, v0

    .line 1338
    :cond_1
    :goto_1
    return p1

    .line 1325
    :cond_2
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    .line 1326
    sub-float/2addr p2, v1

    goto :goto_0

    .line 1332
    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 1335
    cmpg-float v0, p2, v2

    if-gez v0, :cond_4

    .line 1336
    sub-float v0, p1, p0

    sub-float v1, v2, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float p1, p0, v0

    goto :goto_1

    :cond_4
    move p1, p0

    .line 1338
    goto :goto_1
.end method

.method public static intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 2

    .prologue
    .line 1523
    invoke-static {p0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    .line 1526
    const v1, 0xffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromInt(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    return-object v0
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3560
    if-nez p0, :cond_1

    .line 3561
    const-string v0, "CalUtils"

    const-string v1, "Null context passed to isAccessibilityEnabled"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3573
    :cond_0
    :goto_0
    return v2

    .line 3564
    :cond_1
    const-string v0, "accessibility"

    .line 3565
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 3566
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3570
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 3571
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    .line 3570
    goto :goto_0

    :cond_2
    move v0, v2

    .line 3571
    goto :goto_1
.end method

.method public static isApkVersionAtLeast(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 4155
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->getAppApkVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCalendarShared(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3614
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3618
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCalendarStorageEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 3988
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 3990
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 3991
    if-eqz v0, :cond_0

    .line 3992
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 3993
    const/4 v0, 0x1

    .line 3995
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isClearTaskFlagSet(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 2640
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectedToInternet(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 633
    :try_start_0
    const-string v0, "connectivity"

    .line 634
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 635
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 639
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 636
    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    const-string v3, "CalUtils"

    const-string v4, "android.permission.ACCESS_NETWORK_STATE not granted"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 639
    goto :goto_0
.end method

.method public static isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2495
    invoke-static {p0}, Lcom/android/calendar/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInternalSource(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 2631
    const-string v0, "intent_source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2632
    const-string v1, "notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "widget"

    .line 2633
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2632
    :goto_0
    return v0

    .line 2633
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isItemInPast(Lcom/android/calendar/timely/TimelineItem;JLjava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1083
    invoke-interface {p0}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1085
    new-instance v2, Lcom/android/calendar/time/Time;

    invoke-direct {v2}, Lcom/android/calendar/time/Time;-><init>()V

    .line 1086
    invoke-interface {p0}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, p3}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v2

    .line 1087
    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1087
    goto :goto_0

    .line 1088
    :cond_2
    invoke-interface {p0}, Lcom/android/calendar/timely/TimelineItem;->showEndTime()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1089
    invoke-interface {p0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1091
    :cond_3
    invoke-interface {p0}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isJellybeanMr2OrLater()Z
    .locals 2

    .prologue
    .line 583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKitKatOrLater()Z
    .locals 2

    .prologue
    .line 590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLOrLater()Z
    .locals 2

    .prologue
    .line 604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLayoutDirectionRtl(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2505
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2506
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalOrHtcLocalCalendar(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 4214
    const-string v0, "com.htc.pcsc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4215
    const/4 v0, 0x1

    .line 4218
    :goto_0
    return v0

    :cond_0
    const-string v0, "LOCAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isLollipopMr1OrLater()Z
    .locals 2

    .prologue
    .line 611
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMOrLater()Z
    .locals 2

    .prologue
    .line 618
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMinimonthDraggable(Landroid/content/Context;Lcom/android/calendar/timely/CalendarFragment;)Z
    .locals 1

    .prologue
    .line 3451
    invoke-static {p0}, Lcom/android/calendar/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/CalendarFragment;->isMiniMonthDraggable(Z)Z

    move-result v0

    return v0
.end method

.method public static isMinimonthToggleable(Landroid/content/Context;Lcom/android/calendar/timely/CalendarFragment;)Z
    .locals 1

    .prologue
    .line 3433
    invoke-static {p0}, Lcom/android/calendar/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/CalendarFragment;->isMiniMonthToggleable(Z)Z

    move-result v0

    return v0
.end method

.method public static isNOrLater()Z
    .locals 1

    .prologue
    .line 625
    invoke-static {}, Lcom/google/android/calendar/utils/NycUtils;->isNOrLater()Z

    move-result v0

    return v0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3458
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 3459
    if-ne v2, v0, :cond_0

    .line 3467
    :goto_0
    return v0

    .line 3461
    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    move v0, v1

    .line 3462
    goto :goto_0

    .line 3466
    :cond_1
    const-string v0, "CalUtils"

    const-string v2, "Orientation is neither portrait nor landscape."

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 3467
    goto :goto_0
.end method

.method public static isTargetAllInOne(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 2648
    const-string v0, "open_in_calendar_activity"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isTodayOrTomorrow(JJJ)I
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 2353
    move-wide v0, p2

    move-wide v2, p0

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->getDiffInDays(JJJ)I

    move-result v0

    .line 2354
    if-ne v0, v6, :cond_0

    .line 2355
    const/4 v0, 0x2

    .line 2359
    :goto_0
    return v0

    .line 2356
    :cond_0
    if-nez v0, :cond_1

    move v0, v6

    .line 2357
    goto :goto_0

    .line 2359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidEmail(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2484
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidEventTime(JLjava/util/TimeZone;JLjava/util/TimeZone;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1566
    sub-long v2, p3, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    move v2, v1

    .line 1567
    :goto_0
    if-eqz p6, :cond_3

    .line 1568
    if-nez v2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/time/Time;->getJulianDay(JLjava/util/TimeZone;)I

    move-result v2

    .line 1569
    invoke-static {p3, p4, p5}, Lcom/android/calendar/time/Time;->getJulianDay(JLjava/util/TimeZone;)I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 1571
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v0

    .line 1566
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1571
    goto :goto_1
.end method

.method public static isValidEventTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z
    .locals 7

    .prologue
    .line 1581
    .line 1582
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 1583
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move v6, p2

    .line 1581
    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Utils;->isValidEventTime(JLjava/util/TimeZone;JLjava/util/TimeZone;Z)Z

    move-result v0

    return v0
.end method

.method public static isValidEventTime(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z
    .locals 7

    .prologue
    .line 1593
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 1594
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    move v6, p2

    .line 1593
    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Utils;->isValidEventTime(JLjava/util/TimeZone;JLjava/util/TimeZone;Z)Z

    move-result v0

    return v0
.end method

.method public static javaToUnicodeCharOffset(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 3471
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    const/4 v0, 0x1

    .line 906
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 907
    if-eqz v0, :cond_0

    .line 908
    const/4 v0, 0x0

    .line 912
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 914
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static julianToDebugString(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2373
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 2374
    invoke-virtual {v0, p0}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 2376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 2378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2379
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2381
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 2382
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x5

    .line 2383
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2381
    return-object v0
.end method

.method private static linearInterpolate(IIF)F
    .locals 3

    .prologue
    .line 1717
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lcom/android/calendar/Utils;->clampAndLog(FFF)F

    move-result v0

    .line 1719
    int-to-float v1, p0

    sub-int v2, p1, p0

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static loadTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 687
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;Z)Ljava/lang/String;

    .line 688
    return-void
.end method

.method public static makeCall(Landroid/content/Context;ZLandroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4286
    if-eqz p1, :cond_0

    .line 4287
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 4288
    :goto_0
    new-instance v2, Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.CALL"

    :goto_1
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4289
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4290
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4291
    sget v0, Lcom/android/calendar/R$string;->no_available_dialer:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4295
    :goto_2
    return-void

    .line 4287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4288
    :cond_1
    const-string v0, "android.intent.action.DIAL"

    goto :goto_1

    .line 4294
    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 2799
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static prepareIntentToOpenLink(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 3636
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3637
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3642
    :goto_0
    return-void

    .line 3640
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static redirectIfCalendarStorageDisabled(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 4006
    invoke-static {p0}, Lcom/android/calendar/Utils;->isCalendarStorageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4007
    const-string v0, "CalUtils"

    const-string v1, "Calendar Storage is disabled. Redirecting to LaunchInfoActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    invoke-static {p0}, Lcom/android/calendar/Utils;->redirectToLaunchInfoActivity(Landroid/app/Activity;)V

    .line 4009
    const/4 v0, 0x1

    .line 4011
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static redirectIfMandatoryPermissionsNotGranted(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 3976
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3977
    const-string v0, "CalUtils"

    const-string v1, "Mandatory Permissions not granted. Redirecting to LaunchInfoActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    invoke-static {p0}, Lcom/android/calendar/Utils;->redirectToLaunchInfoActivity(Landroid/app/Activity;)V

    .line 3979
    const/4 v0, 0x1

    .line 3981
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static redirectToLaunchInfoActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 4015
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4016
    const-class v1, Lcom/android/calendar/event/LaunchInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4017
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4018
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4019
    return-void
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    .prologue
    .line 1801
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1802
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1803
    return-void
.end method

.method public static removeSharedPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 840
    .line 841
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 840
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 842
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 843
    return-void
.end method

.method public static requestAccessibilityFocus(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3598
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3599
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 3602
    :cond_0
    return-void
.end method

.method public static requestCallPermissions(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 3962
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3963
    sget-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_CALL:[Ljava/lang/String;

    const/16 v1, 0x3ec

    invoke-static {p0, v0, v1}, Lcom/google/android/calendar/PermissionsUtil;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 3966
    :cond_0
    return-void
.end method

.method public static requestContactsAndOrLocationPermissions(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3927
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3928
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    .line 3929
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v1

    .line 3931
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 3932
    sget-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_CONTACTS_AND_LOCATION:[Ljava/lang/String;

    .line 3941
    :goto_0
    invoke-static {p0, v0, v2}, Lcom/google/android/calendar/PermissionsUtil;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 3943
    :cond_0
    :goto_1
    return-void

    .line 3933
    :cond_1
    if-nez v0, :cond_2

    .line 3934
    sget-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_CONTACTS:[Ljava/lang/String;

    goto :goto_0

    .line 3935
    :cond_2
    if-nez v1, :cond_3

    .line 3936
    sget-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    goto :goto_0

    .line 3938
    :cond_3
    const-string v0, "CalUtils"

    const-string v1, "Requested contacts and/or location permissions when both granted"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public static requestContactsPermissions(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 3946
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->requestContactsPermissions(Landroid/app/Activity;I)V

    .line 3947
    return-void
.end method

.method public static requestContactsPermissions(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 3950
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3951
    sget-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_CONTACTS:[Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/google/android/calendar/PermissionsUtil;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 3953
    :cond_0
    return-void
.end method

.method public static requestLocationPermissions(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 3956
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3957
    sget-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/calendar/PermissionsUtil;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 3959
    :cond_0
    return-void
.end method

.method public static requestMandatoryPermissions(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 3921
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3922
    sget-object v0, Lcom/android/calendar/Utils;->PERMISSIONS_MANDATORY:[Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/google/android/calendar/PermissionsUtil;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 3924
    :cond_0
    return-void
.end method

.method public static resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1862
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static rgbToHsb(III[F)V
    .locals 8

    .prologue
    const/16 v4, 0x100

    const/4 v3, -0x1

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1455
    if-le p0, v3, :cond_0

    if-ge p0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1456
    if-le p1, v3, :cond_1

    if-ge p1, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1457
    if-le p2, v3, :cond_2

    if-ge p2, v4, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1459
    int-to-float v0, p0

    div-float/2addr v0, v5

    .line 1460
    int-to-float v3, p1

    div-float/2addr v3, v5

    .line 1461
    int-to-float v4, p2

    div-float/2addr v4, v5

    .line 1462
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1463
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1465
    const/4 v7, 0x2

    aput v5, p3, v7

    .line 1467
    cmpl-float v7, v5, v6

    if-nez v7, :cond_3

    .line 1468
    const/4 v0, 0x0

    aput v0, p3, v1

    aput v0, p3, v2

    .line 1481
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 1455
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1456
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1457
    goto :goto_2

    .line 1470
    :cond_3
    sub-float v6, v5, v6

    .line 1471
    div-float v7, v6, v5

    aput v7, p3, v1

    .line 1472
    cmpl-float v1, v5, v0

    if-nez v1, :cond_5

    .line 1473
    sub-float v0, v3, v4

    div-float v1, v0, v6

    cmpg-float v0, v3, v4

    if-gez v0, :cond_4

    const/4 v0, 0x6

    :goto_4
    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 1479
    :goto_5
    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    aput v0, p3, v2

    goto :goto_3

    :cond_4
    move v0, v2

    .line 1473
    goto :goto_4

    .line 1474
    :cond_5
    cmpl-float v1, v5, v3

    if-nez v1, :cond_6

    .line 1475
    sub-float v0, v4, v0

    div-float/2addr v0, v6

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    goto :goto_5

    .line 1477
    :cond_6
    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    goto :goto_5
.end method

.method public static rgbToHsl(III[F)V
    .locals 12

    .prologue
    .line 1414
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1415
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1416
    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    const/16 v0, 0x100

    if-ge p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 1418
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v1, v0, v1

    .line 1419
    int-to-float v0, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v2, v0, v2

    .line 1420
    int-to-float v0, p2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v3, v0, v3

    .line 1421
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1422
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1424
    const/4 v5, 0x2

    add-float v6, v4, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    aput v6, p3, v5

    .line 1426
    cmpl-float v5, v4, v0

    if-nez v5, :cond_3

    .line 1427
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p3, v1

    aput v2, p3, v0

    .line 1440
    :goto_3
    return-void

    .line 1414
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1415
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1416
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1429
    :cond_3
    sub-float v5, v4, v0

    .line 1430
    const/4 v7, 0x1

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v8, v10

    if-lez v6, :cond_4

    const/high16 v6, 0x40000000    # 2.0f

    sub-float/2addr v6, v4

    sub-float v0, v6, v0

    div-float v0, v5, v0

    :goto_4
    aput v0, p3, v7

    .line 1431
    cmpl-float v0, v4, v1

    if-nez v0, :cond_6

    .line 1432
    sub-float v0, v2, v3

    div-float v1, v0, v5

    cmpg-float v0, v2, v3

    if-gez v0, :cond_5

    const/4 v0, 0x6

    :goto_5
    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 1438
    :goto_6
    const/4 v1, 0x0

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v0, v2

    aput v0, p3, v1

    goto :goto_3

    .line 1430
    :cond_4
    add-float/2addr v0, v4

    div-float v0, v5, v0

    goto :goto_4

    .line 1432
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 1433
    :cond_6
    cmpl-float v0, v4, v2

    if-nez v0, :cond_7

    .line 1434
    sub-float v0, v3, v1

    div-float/2addr v0, v5

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    goto :goto_6

    .line 1436
    :cond_7
    sub-float v0, v1, v2

    div-float/2addr v0, v5

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    goto :goto_6
.end method

.method public static schedulePeriodicSyncs(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3079
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSyncFactory()Lcom/android/calendar/timely/settings/SyncFactory;

    move-result-object v0

    .line 3081
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3082
    invoke-interface {v0, v2}, Lcom/android/calendar/timely/settings/SyncFactory;->appendSyncFlags(Landroid/os/Bundle;)Z

    move-result v0

    .line 3084
    if-nez v0, :cond_0

    .line 3085
    const-string v0, "CalUtils"

    const-string v1, "Could not get flags for periodic sync, bailing out"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3195
    :goto_0
    return-void

    .line 3092
    :cond_0
    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 3095
    new-instance v5, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 3096
    const-string v0, "sync_extra_get_settings"

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3097
    const-string v0, "sync_extra_get_recent_notifications"

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3100
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3101
    const-string v0, "sync_extra_get_default_notifications"

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3104
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3105
    const-string v0, "sync_extra_get_server_date"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3108
    const-string v0, "sync_periodic"

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3111
    invoke-static {}, Lcom/android/calendar/Utils;->isNOrLater()Z

    move-result v0

    .line 3113
    const-string v1, "require_charging"

    .line 3117
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3118
    if-eqz v0, :cond_3

    .line 3119
    invoke-virtual {v2, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3126
    :goto_1
    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v0, "sync_extra_get_server_date"

    .line 3127
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3128
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 3129
    :cond_1
    const-string v0, "CalUtils"

    const-string v1, "Unexpected extras"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v8}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3134
    :cond_2
    new-instance v0, Lcom/android/calendar/Utils$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/Utils$4;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v9, [Ljava/lang/Void;

    .line 3194
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/Utils$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3121
    :cond_3
    invoke-virtual {v3, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static setEventExtrasFlag(IIZ)I
    .locals 1

    .prologue
    .line 2605
    if-eqz p2, :cond_0

    .line 2606
    or-int v0, p0, p1

    .line 2608
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    goto :goto_0
.end method

.method public static varargs setFadeAnimations(Landroid/view/ViewGroup;Z[I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Z[I)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3741
    if-nez p0, :cond_1

    .line 3742
    const/4 v0, 0x0

    .line 3752
    :cond_0
    return-object v0

    .line 3744
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3745
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, p2, v1

    .line 3746
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3747
    if-nez v4, :cond_2

    .line 3745
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3750
    :cond_2
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    aput-object v4, v5, v2

    invoke-static {p1, v5}, Lcom/android/calendar/Utils;->setFadeAnimations(Z[Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public static varargs setFadeAnimations(Z[Landroid/view/View;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 3762
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3763
    array-length v7, p1

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v8, p1, v4

    .line 3764
    if-eqz p0, :cond_0

    move v3, v2

    .line 3765
    :goto_1
    if-eqz p0, :cond_1

    move v0, v1

    .line 3766
    :goto_2
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    aput v3, v10, v5

    const/4 v3, 0x1

    aput v0, v10, v3

    .line 3767
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v10, 0x96

    .line 3768
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3766
    invoke-static {v8, v0}, Lcom/android/calendar/Utils;->withHardwareLayer(Landroid/view/View;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3769
    new-instance v3, Lcom/android/calendar/Utils$5;

    invoke-direct {v3, v8, p0}, Lcom/android/calendar/Utils$5;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3780
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3763
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3764
    goto :goto_1

    :cond_1
    move v0, v2

    .line 3765
    goto :goto_2

    .line 3782
    :cond_2
    return-object v6
.end method

.method public static setLaunchActivityFlags(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 4085
    const v0, 0x1000c000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4087
    return-void
.end method

.method public static setLaunchTimelineItem(Landroid/content/Intent;Lcom/android/calendar/timely/TimelineItem;)V
    .locals 2

    .prologue
    .line 2667
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2668
    const-string v1, "key_timeline_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2669
    const-string v1, "key_timeline_item"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2670
    return-void
.end method

.method public static setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1848
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1858
    :cond_0
    :goto_0
    return-void

    .line 1851
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1852
    new-instance v2, Lcom/android/calendar/time/Time;

    invoke-direct {v2, p2}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 1854
    const v0, 0x15180

    iget v1, v2, Lcom/android/calendar/time/Time;->hour:I

    mul-int/lit16 v1, v1, 0xe10

    sub-int/2addr v0, v1

    iget v1, v2, Lcom/android/calendar/time/Time;->minute:I

    mul-int/lit8 v1, v1, 0x3c

    sub-int/2addr v0, v1

    iget v1, v2, Lcom/android/calendar/time/Time;->second:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 1856
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1857
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 826
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 827
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 828
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 829
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 830
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 833
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 834
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 835
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 836
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 837
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 805
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 806
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 807
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 819
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 820
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 821
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 822
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 823
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 810
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 811
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 812
    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p2, v0

    .line 813
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 816
    return-void
.end method

.method public static setThirdPartyEidSource(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2623
    const-string v0, "intent_source"

    const-string v1, "external_eid"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2624
    return-void
.end method

.method public static setThirdPartySource(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2616
    const-string v0, "intent_source"

    const-string v1, "external"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2617
    return-void
.end method

.method public static setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;
    .locals 2

    .prologue
    .line 2868
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2869
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2870
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2871
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2872
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2874
    new-instance v1, Lcom/android/calendar/Utils$CalendarBroadcastReceiver;

    invoke-direct {v1, p1}, Lcom/android/calendar/Utils$CalendarBroadcastReceiver;-><init>(Ljava/lang/Runnable;)V

    .line 2875
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2876
    return-object v1
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 660
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public static setTodayIcon(Landroid/graphics/drawable/LayerDrawable;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2538
    sget v0, Lcom/android/calendar/R$id;->today_icon_day:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2539
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/calendar/DayOfMonthDrawable;

    if-eqz v1, :cond_0

    .line 2540
    check-cast v0, Lcom/android/calendar/DayOfMonthDrawable;

    .line 2545
    :goto_0
    new-instance v1, Lcom/android/calendar/time/Time;

    invoke-direct {v1, p2}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2546
    invoke-virtual {v1}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 2547
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 2548
    iget v1, v1, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayOfMonthDrawable;->setDayOfMonth(I)V

    .line 2549
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2550
    sget v1, Lcom/android/calendar/R$id;->today_icon_day:I

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 2551
    return-void

    .line 2542
    :cond_0
    new-instance v0, Lcom/android/calendar/DayOfMonthDrawable;

    invoke-direct {v0, p1}, Lcom/android/calendar/DayOfMonthDrawable;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static varargs setVisibilities(ZLandroid/view/ViewGroup;[I)V
    .locals 3

    .prologue
    .line 3216
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p2, v0

    .line 3217
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 3216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3219
    :cond_0
    return-void
.end method

.method public static setVisibility(Landroid/view/View;Z)I
    .locals 1

    .prologue
    .line 3226
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3227
    :goto_0
    if-eqz p0, :cond_0

    .line 3228
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3230
    :cond_0
    return v0

    .line 3226
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static showFeedback(Landroid/content/Context;IZ)V
    .locals 3

    .prologue
    .line 4124
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, p2, v1, v2}, Lcom/android/calendar/Utils;->showFeedback(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Long;I)V

    .line 4126
    return-void
.end method

.method public static showFeedback(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 4120
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/calendar/Utils;->showFeedback(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Long;I)V

    .line 4121
    return-void
.end method

.method public static showFeedback(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Long;I)V
    .locals 2

    .prologue
    .line 4109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.calendar.intent.action.ACTION_SHOW_FEEDBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4110
    const-string v1, "feedbackMessage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4111
    const-string v1, "shortLength"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4112
    if-eqz p3, :cond_0

    .line 4113
    const-string v1, "eventId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4115
    :cond_0
    const-string v1, "eventAction"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4116
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 4117
    return-void
.end method

.method public static showPrePages(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 3484
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v0

    .line 3485
    invoke-interface {v0}, Lcom/android/calendar/UnifiedExtensions;->getWhatsNew()Lcom/android/calendar/WhatsNewFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/calendar/WhatsNewFactory;->checkForAccountChanges(Landroid/app/Activity;)V

    .line 3486
    invoke-interface {v0, p0}, Lcom/android/calendar/UnifiedExtensions;->showPreDialog(Landroid/app/Activity;)V

    .line 3487
    return-void
.end method

.method public static showSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 3592
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3594
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3595
    return-void
.end method

.method private static singleDayEvent(JJJ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2333
    cmp-long v1, p0, p2

    if-nez v1, :cond_1

    .line 2341
    :cond_0
    :goto_0
    return v0

    .line 2339
    :cond_1
    invoke-static {p0, p1, p4, p5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v1

    .line 2340
    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    invoke-static {v2, v3, p4, p5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v2

    .line 2341
    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static singleDayEvent(JJLjava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2314
    cmp-long v1, p0, p2

    if-nez v1, :cond_1

    .line 2326
    :cond_0
    :goto_0
    return v0

    .line 2317
    :cond_1
    new-instance v1, Lcom/android/calendar/time/Time;

    invoke-direct {v1, p4}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v1, p0, p1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 2319
    new-instance v2, Lcom/android/calendar/time/Time;

    invoke-direct {v2, p4}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2320
    invoke-virtual {v2, p2, p3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 2324
    iget-wide v4, v1, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v1

    .line 2325
    const-wide/16 v4, 0x1

    sub-long v4, p2, v4

    iget-wide v2, v2, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v4, v5, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v2

    .line 2326
    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sortColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1489
    sget-object v0, Lcom/android/calendar/Utils;->sColorsComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1490
    return-void
.end method

.method public static sparseArrayToString(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3390
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3391
    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3415
    :goto_0
    return-object v0

    .line 3393
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3394
    if-gtz v1, :cond_1

    .line 3395
    const-string v0, "{}"

    goto :goto_0

    .line 3398
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x1c

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3399
    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3400
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 3401
    if-lez v0, :cond_2

    .line 3402
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3404
    :cond_2
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3406
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3407
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 3408
    if-eq v3, p0, :cond_3

    .line 3409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3400
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3411
    :cond_3
    const-string v3, "(this sparseArray)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3414
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 4166
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4184
    if-nez p1, :cond_1

    .line 4185
    const-string v1, "Did not start null intent."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4202
    :cond_0
    :goto_0
    return v0

    .line 4188
    :cond_1
    if-nez p0, :cond_2

    .line 4189
    const-string v2, "Did not start intent %s: context is null"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p2, v2, v1}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 4194
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4195
    goto :goto_0

    .line 4196
    :catch_0
    move-exception v2

    .line 4197
    const-string v2, "Did not start intent %s: could not resolve."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p2, v2, v1}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4198
    if-eqz p3, :cond_0

    .line 4199
    sget v1, Lcom/android/calendar/R$string;->activity_not_found_general:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 4200
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3693
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3694
    const/4 v0, 0x1

    .line 3698
    :goto_0
    return v0

    .line 3695
    :catch_0
    move-exception v1

    .line 3696
    sget v2, Lcom/android/calendar/R$string;->edit_error_generic:I

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3697
    const-string v2, "CalUtils"

    const-string v3, "Unable to find activity for intent"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static startActivityForUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 3673
    const/4 v0, 0x0

    .line 3674
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3676
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3677
    invoke-static {v0}, Lcom/android/calendar/Utils;->prepareIntentToOpenLink(Landroid/content/Intent;)V

    .line 3680
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static startActivityForUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 3656
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0, p2}, Lcom/android/calendar/Utils;->startActivityForUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static startActivityForUrlWithApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3717
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3718
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3719
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3720
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3721
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3722
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3723
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3724
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3725
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3726
    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3727
    invoke-static {p0, v2, p4, v1}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 3730
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 856
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 857
    const-string v0, "beginTime"

    invoke-virtual {p0, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 858
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 860
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 869
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 872
    :cond_0
    return-wide v0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    const-string v0, "Calendar"

    const-string v1, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public static tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 4240
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 4241
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 4243
    :cond_0
    return-void
.end method

.method public static unicodeToJavaCharOffset(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 3475
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static updateHiddenChipCount(Lcom/android/calendar/timely/TimelineItem;IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/TimelineItem;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3064
    invoke-interface {p0}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3065
    invoke-interface {p0}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    .line 3067
    :goto_0
    if-gt v1, v2, :cond_0

    .line 3068
    sub-int v3, v1, p1

    sub-int v0, v1, p1

    .line 3069
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3068
    invoke-interface {p3, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3067
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3071
    :cond_0
    return-void
.end method

.method public static withHardwareLayer(Landroid/view/View;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 3801
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 3803
    new-instance v1, Lcom/android/calendar/Utils$6;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/Utils$6;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3817
    return-object p1
.end method
