.class Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;
.super Landroid/widget/BaseAdapter;
.source "SingleChoiceTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChoiceDialogTextAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mSelectedItem:I

.field private final mStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 138
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;->mStrings:Ljava/util/List;

    .line 139
    iput p3, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;->mSelectedItem:I

    .line 140
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 154
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 159
    if-nez p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->newapi_single_choice_text_dialog_item:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 161
    new-instance v3, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;-><init>(Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;Landroid/view/ViewGroup;)V

    .line 162
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;

    .line 165
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v3, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;->mSelectedItem:I

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;->setText(Ljava/lang/String;Z)V

    .line 166
    return-object p2
.end method
