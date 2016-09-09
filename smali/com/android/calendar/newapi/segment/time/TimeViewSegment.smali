.class public Lcom/android/calendar/newapi/segment/time/TimeViewSegment;
.super Lcom/android/calendar/newapi/view/TextTileView;
.source "TimeViewSegment.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/EventHolder;",
        ">",
        "Lcom/android/calendar/newapi/view/TextTileView;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/newapi/model/EventHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TextTileView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 20
    return-void
.end method


# virtual methods
.method protected setupView()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/calendar/newapi/view/TextTileView;->setupView()V

    .line 25
    sget v0, Lcom/android/calendar/R$drawable;->ic_date:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 26
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_date_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 28
    return-void
.end method

.method public updateUi()V
    .locals 15

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v12

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 34
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 37
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-interface {v12}, Lcom/google/android/calendar/api/Event;->getStartMillisSinceEpoch()J

    move-result-wide v0

    .line 42
    invoke-interface {v12}, Lcom/google/android/calendar/api/Event;->getEndMillisSinceEpoch()J

    move-result-wide v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 40
    invoke-static/range {v0 .. v11}, Lcom/android/calendar/Utils;->getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->date_space_dash:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 54
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 55
    invoke-virtual {p0, v11}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->setSecondLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 63
    invoke-interface {v12}, Lcom/google/android/calendar/api/Event;->getStartMillisSinceEpoch()J

    move-result-wide v10

    .line 64
    invoke-interface {v12}, Lcom/google/android/calendar/api/Event;->getEndMillisSinceEpoch()J

    move-result-wide v12

    move-object v14, v6

    .line 59
    invoke-static/range {v7 .. v14}, Lcom/android/calendar/Utils;->getAccessibilityDateTimes(Landroid/content/Context;IZJJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    :cond_2
    return-void
.end method
