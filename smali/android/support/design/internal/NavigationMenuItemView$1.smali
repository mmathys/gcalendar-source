.class Landroid/support/design/internal/NavigationMenuItemView$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "NavigationMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuItemView;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuItemView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView$1;->this$0:Landroid/support/design/internal/NavigationMenuItemView;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 75
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView$1;->this$0:Landroid/support/design/internal/NavigationMenuItemView;

    # getter for: Landroid/support/design/internal/NavigationMenuItemView;->mCheckable:Z
    invoke-static {v0}, Landroid/support/design/internal/NavigationMenuItemView;->access$000(Landroid/support/design/internal/NavigationMenuItemView;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 76
    return-void
.end method
