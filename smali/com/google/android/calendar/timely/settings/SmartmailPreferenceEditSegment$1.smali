.class Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$1;
.super Ljava/lang/Object;
.source "SmartmailPreferenceEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;
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
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$1;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$1;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallySwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$000(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$1;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # invokes: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->updateVisibilitySpinnerVisibility()V
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$100(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    .line 81
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$1;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method
