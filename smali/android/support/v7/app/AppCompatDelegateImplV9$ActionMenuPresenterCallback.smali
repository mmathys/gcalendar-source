.class final Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 0

    .prologue
    .line 1847
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$1;)V
    .locals 0

    .prologue
    .line 1847
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    # invokes: Landroid/support/v7/app/AppCompatDelegateImplV9;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    invoke-static {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$1100(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1860
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 2

    .prologue
    .line 1850
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1851
    if-eqz v0, :cond_0

    .line 1852
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1854
    :cond_0
    const/4 v0, 0x1

    return v0
.end method