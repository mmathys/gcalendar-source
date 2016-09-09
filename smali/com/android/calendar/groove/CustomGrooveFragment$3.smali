.class Lcom/android/calendar/groove/CustomGrooveFragment$3;
.super Ljava/lang/Object;
.source "CustomGrooveFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CustomGrooveFragment;->initEditText()V
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
    .line 142
    iput-object p1, p0, Lcom/android/calendar/groove/CustomGrooveFragment$3;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment$3;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    # invokes: Lcom/android/calendar/groove/CustomGrooveFragment;->returnWithTitle()V
    invoke-static {v0}, Lcom/android/calendar/groove/CustomGrooveFragment;->access$000(Lcom/android/calendar/groove/CustomGrooveFragment;)V

    .line 146
    const/4 v0, 0x0

    return v0
.end method
