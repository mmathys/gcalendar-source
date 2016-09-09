.class public Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "GrooveNotificationEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$Listener;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private mNotificationText:Lcom/android/calendar/newapi/view/TextTileView;

.field private mSwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;)Lcom/android/calendar/newapi/segment/common/NinjaSwitch;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mSwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$Listener;

    invoke-interface {v0, p2}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$Listener;->onSmartNotificationsToggled(Z)V

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$Listener;->onNotificationClicked()V

    .line 66
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/common/EditSegment;->onFinishInflate()V

    .line 51
    sget v0, Lcom/android/calendar/R$id;->notification_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mNotificationText:Lcom/android/calendar/newapi/view/TextTileView;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mNotificationText:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v0, Lcom/android/calendar/R$id;->switch_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mSwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    .line 54
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mSwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    sget v0, Lcom/android/calendar/R$id;->smart_notification_tile:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$1;-><init>(Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method setNoNotification()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mNotificationText:Lcom/android/calendar/newapi/view/TextTileView;

    sget v1, Lcom/android/calendar/R$string;->add_notification_label:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(I[Ljava/lang/Object;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 85
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mNotificationText:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/TextTileView;->getFirstLine()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->edit_text_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    return-void
.end method

.method setNotificationText(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mNotificationText:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 93
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mNotificationText:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/TextTileView;->getFirstLine()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->edit_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    return-void
.end method

.method setSmartNotificationsState(Z)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mSwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->setCheckedStealthily(Z)V

    .line 78
    return-void
.end method
