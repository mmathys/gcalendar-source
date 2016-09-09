.class Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;
.super Ljava/lang/Object;
.source "SingleChoiceColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorViewHolder"
.end annotation


# instance fields
.field private final mCheck:Landroid/widget/ImageView;

.field private final mCircle:Lcom/android/calendar/newapi/segment/color/ColorCircle;

.field private final mCircleImage:Landroid/widget/ImageView;

.field private final mLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget v0, Lcom/android/calendar/R$id;->color_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mLabel:Landroid/widget/TextView;

    .line 123
    sget v0, Lcom/android/calendar/R$id;->color_icon:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mCircleImage:Landroid/widget/ImageView;

    .line 124
    sget v0, Lcom/android/calendar/R$id;->checkmark:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mCheck:Landroid/widget/ImageView;

    .line 125
    new-instance v0, Lcom/android/calendar/newapi/segment/color/ColorCircle;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/segment/color/ColorCircle;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mCircle:Lcom/android/calendar/newapi/segment/color/ColorCircle;

    .line 126
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mCircleImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mCircle:Lcom/android/calendar/newapi/segment/color/ColorCircle;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void
.end method


# virtual methods
.method public setEntry(Lcom/android/calendar/newapi/segment/common/ColorEntry;Z)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 132
    sget v0, Lcom/android/calendar/R$color;->google_blue:I

    .line 131
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mCheck:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->mCircle:Lcom/android/calendar/newapi/segment/color/ColorCircle;

    iget v1, p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    invoke-virtual {v0, v1, p2}, Lcom/android/calendar/newapi/segment/color/ColorCircle;->setColor(IZ)V

    .line 135
    return-void

    .line 132
    :cond_0
    sget v0, Lcom/android/calendar/R$color;->edit_text_dark:I

    goto :goto_0

    .line 133
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
