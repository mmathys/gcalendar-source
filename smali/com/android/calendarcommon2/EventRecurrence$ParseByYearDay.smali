.class Lcom/android/calendarcommon2/EventRecurrence$ParseByYearDay;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByYearDay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseByYearDay;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 3

    .prologue
    .line 863
    const/16 v0, -0x16e

    const/16 v1, 0x16e

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendarcommon2/EventRecurrence$ParseByYearDay;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 864
    iput-object v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    .line 865
    array-length v0, v0

    iput v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    .line 866
    const/16 v0, 0x200

    return v0
.end method
