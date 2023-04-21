.class Lcom/senseonics/getSetting/GetSettingRepository$1;
.super Ljava/lang/Object;
.source "GetSettingRepository.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/getSetting/GetSettingRepository;->checkBatteryMonitorThreshold(Lrx/functions/Action1;Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/util/List<",
        "Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;",
        ">;",
        "Lrx/Observable<",
        "Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/getSetting/GetSettingRepository;


# direct methods
.method constructor <init>(Lcom/senseonics/getSetting/GetSettingRepository;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/senseonics/getSetting/GetSettingRepository$1;->this$0:Lcom/senseonics/getSetting/GetSettingRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/senseonics/getSetting/GetSettingRepository$1;->call(Ljava/util/List;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/util/List;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;",
            ">;)",
            "Lrx/Observable<",
            "Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
