.class Lcom/android/calendar/event/AccessCodePickerDialog$2;
.super Ljava/lang/Object;
.source "AccessCodePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/AccessCodePickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/AccessCodePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/AccessCodePickerDialog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$2;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$2;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    .line 65
    invoke-virtual {v0}, Lcom/android/calendar/event/AccessCodePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AbstractCalendarActivity;

    .line 66
    iget-object v1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$2;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mConferenceNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$100(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/AccessCodePickerDialog$2;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    .line 67
    # invokes: Lcom/android/calendar/event/AccessCodePickerDialog;->getSelectedAccessCode()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$200(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Lcom/android/calendar/event/ConferenceCallUtils;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/AbstractCalendarActivity;->makeCall(Landroid/net/Uri;)V

    .line 69
    iget-object v1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$2;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;
    invoke-static {v1}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$300(Lcom/android/calendar/event/AccessCodePickerDialog;)Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->getSelectedItem()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/event/AccessCodePickerDialog$2;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;
    invoke-static {v2}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$300(Lcom/android/calendar/event/AccessCodePickerDialog;)Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 71
    sget v1, Lcom/android/calendar/R$string;->analytics_label_without_passcode:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logJoinConference(Landroid/content/Context;I)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    sget v1, Lcom/android/calendar/R$string;->analytics_label_with_passcode:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logJoinConference(Landroid/content/Context;I)V

    goto :goto_0
.end method
