.class Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .prologue
    .line 2851
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/CoordinatorLayout$1;)V
    .locals 0

    .prologue
    .line 2851
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2854
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    # getter for: Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->access$300(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2855
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    # getter for: Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->access$300(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2857
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2861
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v1, 0x1

    # invokes: Landroid/support/design/widget/CoordinatorLayout;->prepareChildren(Z)V
    invoke-static {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->access$400(Landroid/support/design/widget/CoordinatorLayout;Z)V

    .line 2862
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 2864
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    # getter for: Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->access$300(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2865
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    # getter for: Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->access$300(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2867
    :cond_0
    return-void
.end method
