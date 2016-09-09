.class public Lcom/android/calendar/event/segment/InfoSegmentGroup;
.super Landroid/widget/LinearLayout;
.source "InfoSegmentGroup.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/calendar/event/segment/InfoSegmentGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method private addSegments(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/segment/InfoSegmentLayout;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/segment/InfoSegmentLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/segment/InfoSegmentGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    instance-of v2, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    if-eqz v2, :cond_1

    .line 39
    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 40
    :cond_1
    instance-of v2, v0, Lcom/android/calendar/event/segment/InfoSegmentGroup;

    if-eqz v2, :cond_0

    .line 41
    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentGroup;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/segment/InfoSegmentGroup;->addSegments(Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 44
    :cond_2
    return-object p1
.end method


# virtual methods
.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/segment/InfoSegmentLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentGroup;->addSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
