.class Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindTimeChip"
.end annotation


# instance fields
.field public final chip:Lcom/android/calendar/timely/TimelyChip;

.field public final column:I


# direct methods
.method public constructor <init>(ILcom/android/calendar/timely/TimelyChip;)V
    .locals 0

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->column:I

    .line 859
    iput-object p2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    .line 860
    return-void
.end method
