.class Lcom/android/calendarcommon2/EventRecurrence$ParseWkst;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseWkst"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseWkst;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 4

    .prologue
    .line 899
    # getter for: Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/calendarcommon2/EventRecurrence;->access$1600()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 900
    if-nez v0, :cond_1

    .line 901
    new-instance v1, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    const-string v2, "Invalid WKST value: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    .line 904
    const/16 v0, 0x2000

    return v0
.end method
