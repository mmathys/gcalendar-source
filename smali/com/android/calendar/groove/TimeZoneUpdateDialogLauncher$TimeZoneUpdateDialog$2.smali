.class Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;
.super Ljava/lang/Object;
.source "TimeZoneUpdateDialogLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentTimeZoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;->this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;

    iput-object p2, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;->val$currentTimeZoneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;->val$context:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->analytics_action_timezone_dialog_decline:I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 227
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;->this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;

    iget-object v1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;->val$currentTimeZoneId:Ljava/lang/String;

    # invokes: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->saveCurrentTimeZoneAsLastDisplayed(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->access$300(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    return-void
.end method
