.class Lcom/android/calendar/timely/FindTimeGridFragment$1;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 168
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mListener:Lcom/android/calendar/timely/FindTimeGridUi$Listener;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$100(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridUi$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mListener:Lcom/android/calendar/timely/FindTimeGridUi$Listener;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$100(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridUi$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/timely/FindTimeGridUi$Listener;->onGridCancelled()V

    .line 174
    :cond_0
    return-void
.end method
