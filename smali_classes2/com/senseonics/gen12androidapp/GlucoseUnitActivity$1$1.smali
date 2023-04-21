.class Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1$1;
.super Ljava/lang/Object;
.source "GlucoseUnitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1$1;->this$1:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1$1;->this$1:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->-$$Nest$mgoToNextStep(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)V

    return-void
.end method
