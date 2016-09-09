.class Lcom/android/calendar/groove/CustomGrooveFragment$2;
.super Ljava/lang/Object;
.source "CustomGrooveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CustomGrooveFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/CustomGrooveFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CustomGrooveFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/calendar/groove/CustomGrooveFragment$2;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment$2;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    # invokes: Lcom/android/calendar/groove/CustomGrooveFragment;->returnWithTitle()V
    invoke-static {v0}, Lcom/android/calendar/groove/CustomGrooveFragment;->access$000(Lcom/android/calendar/groove/CustomGrooveFragment;)V

    .line 95
    return-void
.end method
