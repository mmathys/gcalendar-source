.class Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$1;
.super Ljava/lang/Object;
.source "DurationTimeframeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$1;->this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$1;->this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$Listener;->onFilterBack()V

    .line 140
    return-void
.end method
