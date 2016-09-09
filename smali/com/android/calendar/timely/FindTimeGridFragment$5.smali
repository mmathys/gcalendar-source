.class Lcom/android/calendar/timely/FindTimeGridFragment$5;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;->announceGridFragmentIfEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeGridFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$5;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$5;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$5;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$5;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    sget v2, Lcom/android/calendar/R$string;->talkback_find_time_grid_showing_fragment:I

    .line 310
    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/FindTimeGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
