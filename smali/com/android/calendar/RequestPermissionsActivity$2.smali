.class Lcom/android/calendar/RequestPermissionsActivity$2;
.super Ljava/lang/Object;
.source "RequestPermissionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/RequestPermissionsActivity;->updateScreenOfDeath()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/RequestPermissionsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/RequestPermissionsActivity;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/calendar/RequestPermissionsActivity$2;->this$0:Lcom/android/calendar/RequestPermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 172
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 173
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "package:"

    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity$2;->this$0:Lcom/android/calendar/RequestPermissionsActivity;

    invoke-virtual {v0}, Lcom/android/calendar/RequestPermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity$2;->this$0:Lcom/android/calendar/RequestPermissionsActivity;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/RequestPermissionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
