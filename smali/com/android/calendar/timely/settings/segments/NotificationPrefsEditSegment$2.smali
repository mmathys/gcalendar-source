.class Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$2;
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
    .line 92
    iput-object p1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$2;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$2;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$200(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$2;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneHeader:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$300(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$2;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$400(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$2;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method
