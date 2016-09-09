.class final Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
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
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 0

    .prologue
    .line 1817
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$1;)V
    .locals 0

    .prologue
    .line 1817
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1820
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    .line 1821
    if-eq v2, p1, :cond_2

    move v0, v1

    .line 1822
    :goto_0
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-eqz v0, :cond_0

    move-object p1, v2

    :cond_0
    # invokes: Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    invoke-static {v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$800(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 1823
    if-eqz v3, :cond_1

    .line 1824
    if-eqz v0, :cond_3

    .line 1825
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    # invokes: Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    invoke-static {v0, v4, v3, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$900(Landroid/support/v7/app/AppCompatDelegateImplV9;ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1826
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    # invokes: Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    invoke-static {v0, v3, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$1000(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1833
    :cond_1
    :goto_1
    return-void

    .line 1821
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1830
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    # invokes: Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    invoke-static {v0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$1000(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_1
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 2

    .prologue
    .line 1837
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-boolean v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1839
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1840
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1843
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
