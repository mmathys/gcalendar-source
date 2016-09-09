.class public Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EditSpinnerTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public check:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->this$0:Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget v0, Lcom/android/calendar/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/android/calendar/R$id;->checkmark:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 88
    return-void
.end method
