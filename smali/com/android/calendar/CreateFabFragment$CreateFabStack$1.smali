.class Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;
.super Ljava/lang/Object;
.source "CreateFabFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CreateFabFragment$CreateFabStack;->updateFabContentDescription(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CreateFabFragment$CreateFabStack;

.field final synthetic val$contentDescription:Ljava/lang/CharSequence;

.field final synthetic val$createFab:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/CreateFabFragment$CreateFabStack;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;->this$0:Lcom/android/calendar/CreateFabFragment$CreateFabStack;

    iput-object p2, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;->val$createFab:Landroid/view/View;

    iput-object p3, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;->val$contentDescription:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;->val$createFab:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;->this$0:Lcom/android/calendar/CreateFabFragment$CreateFabStack;

    # getter for: Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->access$000(Lcom/android/calendar/CreateFabFragment$CreateFabStack;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;

    .line 166
    iget-object v0, v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;->mCreateFab:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;->val$contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;->this$0:Lcom/android/calendar/CreateFabFragment$CreateFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->findCreateFab()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;->val$contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method
