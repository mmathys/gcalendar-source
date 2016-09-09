.class Lcom/android/calendarcommon2/EventRecurrence$ParseBySecond;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseBySecond"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySecond;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 3

    .prologue
    .line 776
    const/4 v0, 0x0

    const/16 v1, 0x3b

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySecond;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 777
    iput-object v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    .line 778
    array-length v0, v0

    iput v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    .line 779
    const/16 v0, 0x10

    return v0
.end method
