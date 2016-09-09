.class Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByDay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;-><init>()V

    return-void
.end method

.method private static parseWday(Ljava/lang/String;[I[II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 831
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 834
    if-lez v0, :cond_0

    .line 836
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 837
    const/16 v2, -0x35

    const/16 v3, 0x35

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v1

    .line 838
    aput v1, p2, p3

    .line 839
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    :goto_0
    # getter for: Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/calendarcommon2/EventRecurrence;->access$1600()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 845
    if-nez v0, :cond_2

    .line 846
    new-instance v1, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    const-string v2, "Invalid BYDAY value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p0

    .line 842
    goto :goto_0

    .line 846
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 848
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, p3

    .line 849
    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 807
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 810
    new-array v2, v0, [I

    .line 811
    new-array v1, v0, [I

    .line 812
    invoke-static {p1, v2, v1, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;->parseWday(Ljava/lang/String;[I[II)V

    .line 823
    :cond_0
    iput-object v2, p2, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 824
    iput-object v1, p2, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    .line 825
    iput v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 826
    const/16 v0, 0x80

    return v0

    .line 814
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 815
    array-length v0, v4

    .line 817
    new-array v2, v0, [I

    .line 818
    new-array v1, v0, [I

    .line 819
    :goto_0
    if-ge v3, v0, :cond_0

    .line 820
    aget-object v5, v4, v3

    invoke-static {v5, v2, v1, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;->parseWday(Ljava/lang/String;[I[II)V

    .line 819
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
