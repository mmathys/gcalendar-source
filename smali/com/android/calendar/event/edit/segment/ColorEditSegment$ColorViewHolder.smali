.class Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;
.super Ljava/lang/Object;
.source "ColorEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/ColorEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorViewHolder"
.end annotation


# instance fields
.field check:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;

.field swatch:Landroid/graphics/drawable/ShapeDrawable;

.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/edit/segment/ColorEditSegment;Landroid/view/ViewGroup;Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 1

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    sget v0, Lcom/android/calendar/R$id;->color_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->label:Landroid/widget/TextView;

    .line 303
    sget v0, Lcom/android/calendar/R$id;->color_icon:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->icon:Landroid/widget/ImageView;

    .line 304
    iput-object p3, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    .line 305
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    sget v0, Lcom/android/calendar/R$id;->checkmark:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->check:Landroid/widget/ImageView;

    .line 307
    return-void
.end method
