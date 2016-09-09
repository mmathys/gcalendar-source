.class Lcom/android/calendar/RequestPermissionsActivity$1;
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
    .line 160
    iput-object p1, p0, Lcom/android/calendar/RequestPermissionsActivity$1;->this$0:Lcom/android/calendar/RequestPermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity$1;->this$0:Lcom/android/calendar/RequestPermissionsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->requestMandatoryPermissions(Landroid/app/Activity;I)V

    .line 164
    return-void
.end method
