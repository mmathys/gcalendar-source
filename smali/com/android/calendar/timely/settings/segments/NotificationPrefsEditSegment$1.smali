.class Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;
.super Ljava/lang/Object;
.source "NotificationPrefsEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNotifySwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$000(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 79
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardRow:Landroid/view/View;
    invoke-static {v3}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$100(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$200(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneHeader:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$300(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$400(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;

    invoke-interface {v0}, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;->canVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateRow:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$500(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 78
    goto :goto_0

    :cond_2
    move v0, v2

    .line 82
    goto :goto_1
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method
