.class public Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;
.super Ljava/lang/Object;
.source "DropdownChipLayouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/DropdownChipLayouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field public final bottomDivider:Landroid/view/View;

.field public final deleteView:Landroid/widget/ImageView;

.field public final destinationTypeView:Landroid/widget/TextView;

.field public final destinationView:Landroid/widget/TextView;

.field public final displayNameView:Landroid/widget/TextView;

.field public final imageView:Landroid/widget/ImageView;

.field public final indicatorView:Landroid/widget/TextView;

.field public final permissionBottomDivider:Landroid/view/View;

.field public final permissionRequestDismissView:Landroid/widget/ImageView;

.field public final permissionViewGroup:Landroid/view/ViewGroup;

.field public final personViewGroup:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/android/ex/chips/DropdownChipLayouter;

.field public final topDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->this$0:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->getPersonGroupResId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->personViewGroup:Landroid/view/ViewGroup;

    .line 552
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->getDisplayNameResId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->displayNameView:Landroid/widget/TextView;

    .line 553
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->getDestinationResId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->destinationView:Landroid/widget/TextView;

    .line 554
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->getDestinationTypeResId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->destinationTypeView:Landroid/widget/TextView;

    .line 555
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->getPhotoResId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 556
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->getDeleteResId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->deleteView:Landroid/widget/ImageView;

    .line 557
    sget v0, Lcom/android/ex/chips/R$id;->chip_autocomplete_top_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->topDivider:Landroid/view/View;

    .line 559
    sget v0, Lcom/android/ex/chips/R$id;->chip_autocomplete_bottom_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->bottomDivider:Landroid/view/View;

    .line 560
    sget v0, Lcom/android/ex/chips/R$id;->chip_permission_bottom_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->permissionBottomDivider:Landroid/view/View;

    .line 562
    sget v0, Lcom/android/ex/chips/R$id;->chip_indicator_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->indicatorView:Landroid/widget/TextView;

    .line 564
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->getPermissionGroupResId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->permissionViewGroup:Landroid/view/ViewGroup;

    .line 566
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->getPermissionRequestDismissResId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->permissionRequestDismissView:Landroid/widget/ImageView;

    .line 567
    return-void
.end method
