.class Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$8;
.super Ljava/lang/Object;
.source "SmartmailPreferenceEditSegment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->showAddAutomaticallyDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$8;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$8;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallySwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$000(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$8;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$800(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 316
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$8;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$802(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 317
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
