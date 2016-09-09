.class Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;
.super Ljava/lang/Object;
.source "DurationPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/DurationPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field check:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/timely/settings/DurationPreferences;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    sget v0, Lcom/android/calendar/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;->text:Landroid/widget/TextView;

    .line 345
    sget v0, Lcom/android/calendar/R$id;->checkmark:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;->check:Landroid/widget/ImageView;

    .line 346
    return-void
.end method
