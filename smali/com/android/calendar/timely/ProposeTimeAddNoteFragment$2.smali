.class Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;
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
    .line 134
    iput-object p1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    # getter for: Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mListener:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;
    invoke-static {v0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->access$000(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    # getter for: Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mListener:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;
    invoke-static {v0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->access$000(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    iget-object v2, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    # getter for: Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mStartMillis:J
    invoke-static {v2}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->access$100(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    # getter for: Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mEndMillis:J
    invoke-static {v4}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->access$200(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;->this$0:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    .line 139
    # getter for: Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mNote:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->access$300(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-interface/range {v0 .. v6}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;->onNoteAdded(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;JJLjava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method
