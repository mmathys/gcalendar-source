.class Lcom/android/calendarcommon2/EventRecurrence$ParseByWeekNo;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByWeekNo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseByWeekNo;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 3

    .prologue
    .line 872
    const/16 v0, -0x35

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendarcommon2/EventRecurrence$ParseByWeekNo;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 873
    iput-object v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    .line 874
    array-length v0, v0

    iput v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    .line 875
    const/16 v0, 0x400

    return v0
.end method
