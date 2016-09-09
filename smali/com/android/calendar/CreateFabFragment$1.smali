.class Lcom/android/calendar/CreateFabFragment$1;
.super Ljava/lang/Object;
.source "CreateFabFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CreateFabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CreateFabFragment;

.field final synthetic val$createFab:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/CreateFabFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/calendar/CreateFabFragment$1;->this$0:Lcom/android/calendar/CreateFabFragment;

    iput-object p2, p0, Lcom/android/calendar/CreateFabFragment$1;->val$createFab:Landroid/view/View;

    iput-object p3, p0, Lcom/android/calendar/CreateFabFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$1;->val$createFab:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$1;->this$0:Lcom/android/calendar/CreateFabFragment;

    invoke-virtual {v0}, Lcom/android/calendar/CreateFabFragment;->getInterface()Lcom/android/calendar/CreateFabFragment$CreateFabInterface;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/calendar/CreateFabFragment$1;->this$0:Lcom/android/calendar/CreateFabFragment;

    invoke-interface {v0}, Lcom/android/calendar/CreateFabFragment$CreateFabInterface;->getCreateFabStack()Lcom/android/calendar/CreateFabFragment$CreateFabStack;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/CreateFabFragment$1;->val$createFab:Landroid/view/View;

    iget-object v3, p0, Lcom/android/calendar/CreateFabFragment$1;->val$view:Landroid/view/View;

    iget-object v4, p0, Lcom/android/calendar/CreateFabFragment$1;->this$0:Lcom/android/calendar/CreateFabFragment;

    .line 361
    invoke-virtual {v4}, Lcom/android/calendar/CreateFabFragment;->getStartDayInterface()Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->push(Landroid/view/View;Landroid/view/View;Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;)Landroid/view/View;

    move-result-object v0

    .line 360
    # setter for: Lcom/android/calendar/CreateFabFragment;->mCreateFab:Landroid/view/View;
    invoke-static {v1, v0}, Lcom/android/calendar/CreateFabFragment;->access$202(Lcom/android/calendar/CreateFabFragment;Landroid/view/View;)Landroid/view/View;

    .line 363
    :cond_0
    return-void
.end method
