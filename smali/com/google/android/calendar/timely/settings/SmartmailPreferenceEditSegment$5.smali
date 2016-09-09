.class Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$5;
.super Ljava/lang/Object;
.source "SmartmailPreferenceEditSegment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->showVisibilityDialog(I)V
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
    .line 273
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$5;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$5;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$500(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;
    invoke-static {}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$200()[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$5;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativePrivacyPosition:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$400(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$5;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableApplyAll:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$600(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 279
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$5;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->onUserUpdate()V

    .line 280
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$5;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativePrivacyPosition:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$402(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 281
    return-void
.end method
