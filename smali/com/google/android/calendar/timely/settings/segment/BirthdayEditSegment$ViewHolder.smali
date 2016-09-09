.class Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;
.super Ljava/lang/Object;
.source "BirthdayEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final check:Landroid/widget/ImageView;

.field final label:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->this$0:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    sget v0, Lcom/android/calendar/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->label:Landroid/widget/TextView;

    .line 233
    sget v0, Lcom/android/calendar/R$id;->checkmark:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;->check:Landroid/widget/ImageView;

    .line 234
    return-void
.end method
