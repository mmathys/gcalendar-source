.class public Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SingleChoiceTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mCheck:Landroid/widget/ImageView;

.field private final mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;->this$0:Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    sget v0, Lcom/android/calendar/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    .line 176
    sget v0, Lcom/android/calendar/R$id;->checkmark:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    .line 177
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 182
    sget v0, Lcom/android/calendar/R$color;->google_blue:I

    .line 181
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    return-void

    .line 182
    :cond_0
    sget v0, Lcom/android/calendar/R$color;->edit_text_dark:I

    goto :goto_0

    .line 183
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
