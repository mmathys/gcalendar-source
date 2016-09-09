.class Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$1;
.super Ljava/lang/Object;
.source "ProposeTimeAddNoteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$1;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$1;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    # getter for: Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mListener:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;
    invoke-static {v0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->access$000(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$1;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    # getter for: Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mListener:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;
    invoke-static {v0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->access$000(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$1;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;->onCancelled(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)V

    .line 131
    :cond_0
    return-void
.end method
