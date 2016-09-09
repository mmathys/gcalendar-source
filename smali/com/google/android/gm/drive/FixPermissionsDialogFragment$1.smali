.class final Lcom/google/android/gm/drive/FixPermissionsDialogFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "FixPermissionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->setupRadioButton(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gm/drive/PotentialFix;ZII)Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 254
    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getRoleStringId(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->access$000(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->getRoleStringId(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->access$000(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    return-object v0
.end method
