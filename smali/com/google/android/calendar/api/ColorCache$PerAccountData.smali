.class Lcom/google/android/calendar/api/ColorCache$PerAccountData;
.super Ljava/lang/Object;
.source "ColorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/ColorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerAccountData"
.end annotation


# instance fields
.field private final mCalendarIdToColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/api/ApiColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalendarIntToColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/calendar/api/ApiColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventIdToColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/api/ApiColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventIntToColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/calendar/api/ApiColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mCalendarIdToColorMap:Ljava/util/Map;

    .line 87
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mEventIdToColorMap:Ljava/util/Map;

    .line 88
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mCalendarIntToColorMap:Ljava/util/Map;

    .line 89
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mEventIntToColorMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/api/ColorCache$1;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/calendar/api/ColorCache$PerAccountData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/api/ColorCache$PerAccountData;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mCalendarIdToColorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/api/ColorCache$PerAccountData;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mCalendarIntToColorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/api/ColorCache$PerAccountData;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mEventIdToColorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/api/ColorCache$PerAccountData;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorCache$PerAccountData;->mEventIntToColorMap:Ljava/util/Map;

    return-object v0
.end method
