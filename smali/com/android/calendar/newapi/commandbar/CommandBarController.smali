.class public abstract Lcom/android/calendar/newapi/commandbar/CommandBarController;
.super Ljava/lang/Object;
.source "CommandBarController.java"

# interfaces
.implements Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallbackT:",
        "Ljava/lang/Object;",
        "ModelT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;"
    }
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCallback:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public createCommandBar(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/calendar/newapi/commandbar/CommandBar;
    .locals 3

    .prologue
    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->newapi_command_bar:I

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/commandbar/CommandBar;

    iput-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    .line 27
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/commandbar/CommandBarController;->getActionsLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->initialize(I)V

    .line 28
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setListener(Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/commandbar/CommandBarController;->setupCommandBar(Lcom/android/calendar/newapi/commandbar/CommandBar;)V

    .line 31
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    return-object v0
.end method

.method protected abstract getActionsLayout()I
.end method

.method public final onCommandBarActionClick(I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCallback:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/newapi/commandbar/CommandBarController;->onCommandBarActionClick(Ljava/lang/Object;I)V

    .line 55
    :cond_0
    return-void
.end method

.method protected abstract onCommandBarActionClick(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;I)V"
        }
    .end annotation
.end method

.method protected abstract onModelChanged(Lcom/android/calendar/newapi/commandbar/CommandBar;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/commandbar/CommandBar;",
            "TModelT;)V"
        }
    .end annotation
.end method

.method protected abstract setupCommandBar(Lcom/android/calendar/newapi/commandbar/CommandBar;)V
.end method

.method public updateModel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelT;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBarController;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/newapi/commandbar/CommandBarController;->onModelChanged(Lcom/android/calendar/newapi/commandbar/CommandBar;Ljava/lang/Object;)V

    .line 40
    return-void
.end method
