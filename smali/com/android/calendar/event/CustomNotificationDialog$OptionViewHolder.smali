.class Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;
.super Ljava/lang/Object;
.source "CustomNotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/CustomNotificationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionViewHolder"
.end annotation


# instance fields
.field mCheck:Landroid/widget/ImageView;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/calendar/event/CustomNotificationDialog;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/CustomNotificationDialog;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    sget v0, Lcom/android/calendar/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;->mTextView:Landroid/widget/TextView;

    .line 514
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;->mTextView:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;->mTextView:Landroid/widget/TextView;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mRobotoMedium:Landroid/graphics/Typeface;
    invoke-static {p1}, Lcom/android/calendar/event/CustomNotificationDialog;->access$800(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 516
    sget v0, Lcom/android/calendar/R$id;->checkmark:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;->mCheck:Landroid/widget/ImageView;

    .line 517
    return-void
.end method
