.class public Lcom/android/calendar/groove/GrooveNotificationsEditSegment;
.super Lcom/android/calendar/event/edit/segment/NotificationEditSegment;
.source "GrooveNotificationsEditSegment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAspect:Lcom/android/calendar/event/data/InputAspectNotification;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->mMaxNotifications:I

    .line 27
    sget v0, Lcom/android/calendar/R$string;->groove_edit_default_allowed_notifications:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->mAllowedNotifications:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->mAllowNotificationsAfterEvent:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)Z
    .locals 1

    .prologue
    .line 73
    instance-of v0, p1, Lcom/android/calendar/groove/GrooveEditManager;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {p1}, Lcom/android/calendar/groove/GrooveEditManager;->isOwner()Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)Z

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p2, Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->mAspect:Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-interface {v0, p2}, Lcom/android/calendar/event/data/InputAspectNotification;->enableSmartNotifications(Z)V

    .line 68
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V

    goto :goto_0
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->onFinishInflate()V

    .line 36
    sget v0, Lcom/android/calendar/R$id;->switch_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->mSwitch:Landroid/widget/Switch;

    .line 37
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V

    .line 46
    iput-object p2, p0, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->mAspect:Lcom/android/calendar/event/data/InputAspectNotification;

    .line 47
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectNotification;->smartNotificationsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/android/calendar/event/data/InputAspectNotification;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/groove/GrooveNotificationsEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectNotification;)V

    return-void
.end method

.method protected updateNotificationsType(Lcom/android/calendar/event/data/InputAspectNotification;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
