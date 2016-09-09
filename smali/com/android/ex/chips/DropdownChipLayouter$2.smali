.class Lcom/android/ex/chips/DropdownChipLayouter$2;
.super Ljava/lang/Object;
.source "DropdownChipLayouter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/DropdownChipLayouter;->bindPermissionRequestDismissView(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/DropdownChipLayouter;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/DropdownChipLayouter;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter$2;->this$0:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$2;->this$0:Lcom/android/ex/chips/DropdownChipLayouter;

    # getter for: Lcom/android/ex/chips/DropdownChipLayouter;->mPermissionRequestDismissedListener:Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;
    invoke-static {v0}, Lcom/android/ex/chips/DropdownChipLayouter;->access$100(Lcom/android/ex/chips/DropdownChipLayouter;)Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$2;->this$0:Lcom/android/ex/chips/DropdownChipLayouter;

    # getter for: Lcom/android/ex/chips/DropdownChipLayouter;->mPermissionRequestDismissedListener:Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;
    invoke-static {v0}, Lcom/android/ex/chips/DropdownChipLayouter;->access$100(Lcom/android/ex/chips/DropdownChipLayouter;)Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;->onPermissionRequestDismissed()V

    .line 336
    :cond_0
    return-void
.end method
