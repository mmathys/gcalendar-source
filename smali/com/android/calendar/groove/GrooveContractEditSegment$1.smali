.class Lcom/android/calendar/groove/GrooveContractEditSegment$1;
.super Ljava/lang/Object;
.source "GrooveContractEditSegment.java"

# interfaces
.implements Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveContractEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveContractEditSegment;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$1;->this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferredTimesSelected([Z)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$1;->this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;

    # getter for: Lcom/android/calendar/groove/GrooveContractEditSegment;->mModifications:Lcom/google/android/calendar/api/HabitModifications;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->access$000(Lcom/android/calendar/groove/GrooveContractEditSegment;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->setMorningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    .line 53
    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->setAfternoonPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    .line 54
    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->setEveningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 55
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$1;->this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;

    # getter for: Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonPreferredTimes:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->access$200(Lcom/android/calendar/groove/GrooveContractEditSegment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$1;->this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;

    .line 56
    invoke-virtual {v1}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$1;->this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;

    # invokes: Lcom/android/calendar/groove/GrooveContractEditSegment;->getContract()Lcom/google/android/calendar/api/HabitContract;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveContractEditSegment;->access$100(Lcom/android/calendar/groove/GrooveContractEditSegment;)Lcom/google/android/calendar/api/HabitContract;

    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->getPreferredTimeString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
