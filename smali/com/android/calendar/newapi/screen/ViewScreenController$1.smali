.class final Lcom/android/calendar/newapi/screen/ViewScreenController$1;
.super Ljava/lang/Object;
.source "ViewScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreenController;->notifyContentProviderUpdateIfAvailable(Landroid/app/FragmentManager;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Lcom/android/calendar/newapi/screen/ViewScreenController;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenController;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$1;->val$fragment:Lcom/android/calendar/newapi/screen/ViewScreenController;

    iput-object p2, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$1;->val$fragment:Lcom/android/calendar/newapi/screen/ViewScreenController;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenController;->mStarted:Z
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->access$000(Lcom/android/calendar/newapi/screen/ViewScreenController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$1;->val$fragment:Lcom/android/calendar/newapi/screen/ViewScreenController;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onContentProviderUpdated(Landroid/net/Uri;)V

    goto :goto_0
.end method
