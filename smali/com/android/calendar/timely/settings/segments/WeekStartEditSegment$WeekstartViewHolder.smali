.class Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;
.super Ljava/lang/Object;
.source "WeekStartEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekstartViewHolder"
.end annotation


# instance fields
.field check:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;->this$0:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget v0, Lcom/android/calendar/R$id;->week_start_label:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;->label:Landroid/widget/TextView;

    .line 189
    sget v0, Lcom/android/calendar/R$id;->checkmark:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;->check:Landroid/widget/ImageView;

    .line 190
    return-void
.end method
