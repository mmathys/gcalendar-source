.class Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;
.super Ljava/lang/Object;
.source "SmartmailPreferenceEditSegment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 320
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$800(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$500(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->SECRET:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$900(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$800(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 332
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->onUserUpdate()V

    .line 333
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$802(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 334
    return-void
.end method
