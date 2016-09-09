.class Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByMinute"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 3

    .prologue
    .line 785
    const/4 v0, 0x0

    const/16 v1, 0x3b

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 786
    iput-object v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    .line 787
    array-length v0, v0

    iput v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    .line 788
    const/16 v0, 0x20

    return v0
.end method
