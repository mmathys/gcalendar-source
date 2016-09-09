.class Lcom/android/calendarcommon2/EventRecurrence$ParseByHour;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByHour"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseByHour;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 3

    .prologue
    .line 794
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendarcommon2/EventRecurrence$ParseByHour;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 795
    iput-object v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    .line 796
    array-length v0, v0

    iput v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    .line 797
    const/16 v0, 0x40

    return v0
.end method
