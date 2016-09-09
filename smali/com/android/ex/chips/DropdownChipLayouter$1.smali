.class Lcom/android/ex/chips/DropdownChipLayouter$1;
.super Ljava/lang/Object;
.source "DropdownChipLayouter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/DropdownChipLayouter;->bindDrawableToDeleteView(Landroid/graphics/drawable/StateListDrawable;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/DropdownChipLayouter;

.field final synthetic val$drawable:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter$1;->this$0:Lcom/android/ex/chips/DropdownChipLayouter;

    iput-object p2, p0, Lcom/android/ex/chips/DropdownChipLayouter$1;->val$drawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$1;->val$drawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$1;->this$0:Lcom/android/ex/chips/DropdownChipLayouter;

    # getter for: Lcom/android/ex/chips/DropdownChipLayouter;->mDeleteListener:Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;
    invoke-static {v0}, Lcom/android/ex/chips/DropdownChipLayouter;->access$000(Lcom/android/ex/chips/DropdownChipLayouter;)Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;->onChipDelete()V

    .line 299
    :cond_0
    return-void
.end method
