.class Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$2;
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
        "Lcom/google/calendar/v2/client/service/api/events/PrivacyType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$2;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/events/PrivacyType;)V
    .locals 2

    .prologue
    .line 86
    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;
    invoke-static {}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$200()[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$2;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$300(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$2;->this$0:Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->access$300(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$2;->onChange(Lcom/google/calendar/v2/client/service/api/events/PrivacyType;)V

    return-void
.end method
